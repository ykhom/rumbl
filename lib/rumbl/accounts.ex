defmodule Rumbl.Accounts do
  @moduledoc """
    The Accounts context
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Yurii Khomitskyi", username: "yukhom"},
      %User{id: "2", name: "Jared Leto", username: "jleto"},
      %User{id: "3", name: "Kseniia Korchagina", username: "kkorchagina"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
