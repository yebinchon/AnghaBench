#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_dl {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  if_mc; int /*<<< orphan*/  if_uc; } ;
struct mlx5e_priv {TYPE_3__ eth_addr; int /*<<< orphan*/  mdev; struct ifnet* ifp; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct mlx5e_eth_addr_hash_node {unsigned int mpfs_index; TYPE_2__ ai; int /*<<< orphan*/  action; } ;
struct mlx5e_eth_addr_hash_head {int dummy; } ;
struct mlx5e_copy_addr_ctx {int success; struct mlx5e_eth_addr_hash_head* fill; struct mlx5e_eth_addr_hash_head* free; } ;
struct ifnet {TYPE_1__* if_addr; } ;
struct TYPE_4__ {scalar_t__ ifa_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_eth_addr_hash_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_eth_addr_hash_head*,struct mlx5e_eth_addr_hash_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  MLX5E_ACTION_ADD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MLX5EN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_eth_addr_hash_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hlist ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,struct mlx5e_copy_addr_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int /*<<< orphan*/ ,struct mlx5e_copy_addr_ctx*) ; 
 int FUNC9 (struct ifnet*) ; 
 int FUNC10 (struct ifnet*) ; 
 struct mlx5e_eth_addr_hash_node* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct mlx5e_eth_addr_hash_node*) ; 
 int /*<<< orphan*/  mlx5e_copy_addr ; 
 struct mlx5e_eth_addr_hash_node* FUNC14 (struct mlx5e_eth_addr_hash_head*,struct mlx5e_eth_addr_hash_head*) ; 
 struct mlx5e_eth_addr_hash_node* FUNC15 (struct mlx5e_eth_addr_hash_head*) ; 

__attribute__((used)) static void
FUNC16(struct mlx5e_priv *priv)
{
	struct mlx5e_copy_addr_ctx ctx;
	struct mlx5e_eth_addr_hash_head head_free;
	struct mlx5e_eth_addr_hash_head head_uc;
	struct mlx5e_eth_addr_hash_head head_mc;
	struct mlx5e_eth_addr_hash_node *hn;
	struct ifnet *ifp = priv->ifp;
	size_t x;
	size_t num;

	FUNC4(priv);

retry:
	FUNC0(&head_free);
	FUNC0(&head_uc);
	FUNC0(&head_mc);
	num = 1 + FUNC9(ifp) + FUNC10(ifp);

	/* allocate place holders */
	for (x = 0; x != num; x++) {
		hn = FUNC11(sizeof(*hn), M_MLX5EN, M_WAITOK | M_ZERO);
		hn->action = MLX5E_ACTION_ADD;
		hn->mpfs_index = -1U;
		FUNC1(&head_free, hn, hlist);
	}

	hn = FUNC14(&head_free, &head_uc);
	FUNC3(hn != NULL);

	FUNC5(hn->ai.addr,
	    FUNC2((struct sockaddr_dl *)(ifp->if_addr->ifa_addr)));

	ctx.free = &head_free;
	ctx.fill = &head_uc;
	ctx.success = true;
	FUNC7(ifp, mlx5e_copy_addr, &ctx);
	if (ctx.success == false)
		goto cleanup;

	ctx.fill = &head_mc;
	FUNC8(ifp, mlx5e_copy_addr, &ctx);
	if (ctx.success == false)
		goto cleanup;

	/* insert L2 unicast addresses into hash list */

	while ((hn = FUNC15(&head_uc)) != NULL) {
		if (FUNC13(priv->eth_addr.if_uc, hn) == 0)
			continue;
		if (hn->mpfs_index == -1U)
			FUNC12(priv->mdev, &hn->mpfs_index, hn->ai.addr);
	}

	/* insert L2 multicast addresses into hash list */

	while ((hn = FUNC15(&head_mc)) != NULL) {
		if (FUNC13(priv->eth_addr.if_mc, hn) == 0)
			continue;
	}

cleanup:
	while ((hn = FUNC15(&head_uc)) != NULL)
		FUNC6(hn, M_MLX5EN);
	while ((hn = FUNC15(&head_mc)) != NULL)
		FUNC6(hn, M_MLX5EN);
	while ((hn = FUNC15(&head_free)) != NULL)
		FUNC6(hn, M_MLX5EN);

	if (ctx.success == false)
		goto retry;
}