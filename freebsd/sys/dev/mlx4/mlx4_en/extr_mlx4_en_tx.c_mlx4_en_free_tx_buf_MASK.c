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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_tx_ring {int cons; int last_nr_txbb; int prod; scalar_t__ size; int size_mask; } ;
struct mlx4_en_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int) ; 
 struct mlx4_en_priv* FUNC3 (struct net_device*) ; 

int FUNC4(struct net_device *dev, struct mlx4_en_tx_ring *ring)
{
	struct mlx4_en_priv *priv = FUNC3(dev);
	int cnt = 0;

	/* Skip last polled descriptor */
	ring->cons += ring->last_nr_txbb;
	FUNC0(DRV, priv, "Freeing Tx buf - cons:0x%x prod:0x%x\n",
		 ring->cons, ring->prod);

	if ((u32) (ring->prod - ring->cons) > ring->size) {
                FUNC1(priv, "Tx consumer passed producer!\n");
		return 0;
	}

	while (ring->cons != ring->prod) {
		ring->last_nr_txbb = FUNC2(priv, ring,
		    ring->cons & ring->size_mask);
		ring->cons += ring->last_nr_txbb;
		cnt++;
	}

	if (cnt)
		FUNC0(DRV, priv, "Freed %d uncompleted tx descriptors\n", cnt);

	return cnt;
}