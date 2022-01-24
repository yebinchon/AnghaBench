#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct mlx5e_eth_addr_hash_node {int action; unsigned int mpfs_index; int /*<<< orphan*/  ai; } ;

/* Variables and functions */
#define  MLX5E_ACTION_ADD 129 
#define  MLX5E_ACTION_DEL 128 
 int MLX5E_ACTION_NONE ; 
 int /*<<< orphan*/  MLX5E_FULLMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_eth_addr_hash_node*) ; 

__attribute__((used)) static void
FUNC4(struct mlx5e_priv *priv,
    struct mlx5e_eth_addr_hash_node *hn)
{
	switch (hn->action) {
	case MLX5E_ACTION_ADD:
		FUNC1(priv, &hn->ai, MLX5E_FULLMATCH);
		hn->action = MLX5E_ACTION_NONE;
		break;

	case MLX5E_ACTION_DEL:
		FUNC2(priv, &hn->ai);
		if (hn->mpfs_index != -1U)
			FUNC0(priv->mdev, hn->mpfs_index);
		FUNC3(hn);
		break;

	default:
		break;
	}
}