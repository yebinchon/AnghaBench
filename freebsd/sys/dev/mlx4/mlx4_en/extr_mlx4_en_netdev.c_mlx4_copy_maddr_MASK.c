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
typedef  int u_int ;
struct sockaddr_dl {scalar_t__ sdl_alen; } ;
struct mlx4_en_priv {int /*<<< orphan*/  mc_list; } ;
struct mlx4_en_addr_list {int /*<<< orphan*/  list; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 struct mlx4_en_addr_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int FUNC5(void *arg, struct sockaddr_dl *sdl, u_int count)
{
	struct mlx4_en_priv *priv = arg;
	struct mlx4_en_addr_list *tmp;

	if (sdl->sdl_alen != ETHER_ADDR_LEN)	/* XXXGL: can that happen? */
		return (0);
	tmp = FUNC2(sizeof(struct mlx4_en_addr_list), GFP_ATOMIC);
	if (tmp == NULL) {
		FUNC1(priv, "Failed to allocate address list\n");
		return (0);
	}
	FUNC4(tmp->addr, FUNC0(sdl), ETH_ALEN);
	FUNC3(&tmp->list, &priv->mc_list);
	return (1);
}