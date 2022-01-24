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
struct mlx5e_eth_addr_hash_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_eth_addr_hash_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MLX5EN ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_eth_addr_hash_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hlist ; 

__attribute__((used)) static void
FUNC2(struct mlx5e_eth_addr_hash_node *hn)
{
	FUNC0(hn, hlist);
	FUNC1(hn, M_MLX5EN);
}