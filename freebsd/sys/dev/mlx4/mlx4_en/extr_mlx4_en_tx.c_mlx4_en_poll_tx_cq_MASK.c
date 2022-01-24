#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct mlx4_en_tx_ring {int /*<<< orphan*/  comp_lock; scalar_t__ last_nr_txbb; scalar_t__ cons; scalar_t__ prod; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_poll; } ;
struct mlx4_en_priv {scalar_t__ port_up; TYPE_1__ pstats; struct mlx4_en_tx_ring** tx_ring; } ;
struct mlx4_en_cq {size_t ring; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLX4_EN_TX_POLL_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct mlx4_en_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(unsigned long data)
{
	struct mlx4_en_cq *cq = (struct mlx4_en_cq *) data;
	struct mlx4_en_priv *priv = FUNC3(cq->dev);
	struct mlx4_en_tx_ring *ring = priv->tx_ring[cq->ring];
	u32 inflight;

	FUNC0(priv->pstats.tx_poll);

	if (priv->port_up == 0)
		return;
	if (!FUNC4(&ring->comp_lock)) {
		FUNC2(&cq->timer, jiffies + MLX4_EN_TX_POLL_TIMEOUT);
		return;
	}
	FUNC1(cq->dev, cq);
	inflight = (u32) (ring->prod - ring->cons - ring->last_nr_txbb);

	/* If there are still packets in flight and the timer has not already
	 * been scheduled by the Tx routine then schedule it here to guarantee
	 * completion processing of these packets */
	if (inflight && priv->port_up)
		FUNC2(&cq->timer, jiffies + MLX4_EN_TX_POLL_TIMEOUT);

	FUNC5(&ring->comp_lock);
}