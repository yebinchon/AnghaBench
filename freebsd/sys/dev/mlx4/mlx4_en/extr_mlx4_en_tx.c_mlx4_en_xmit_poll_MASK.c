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
struct mlx4_en_tx_ring {int poll_cnt; int /*<<< orphan*/  comp_lock; } ;
struct mlx4_en_priv {scalar_t__ port_up; int /*<<< orphan*/  dev; struct mlx4_en_tx_ring** tx_ring; struct mlx4_en_cq** tx_cq; } ;
struct mlx4_en_cq {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int MLX4_EN_TX_POLL_MODER ; 
 scalar_t__ MLX4_EN_TX_POLL_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct mlx4_en_priv *priv, int tx_ind)
{
	struct mlx4_en_cq *cq = priv->tx_cq[tx_ind];
	struct mlx4_en_tx_ring *ring = priv->tx_ring[tx_ind];

	if (priv->port_up == 0)
		return;

	/* If we don't have a pending timer, set one up to catch our recent
	   post in case the interface becomes idle */
	if (!FUNC4(&cq->timer))
		FUNC1(&cq->timer, jiffies + MLX4_EN_TX_POLL_TIMEOUT);

	/* Poll the CQ every mlx4_en_TX_MODER_POLL packets */
	if ((++ring->poll_cnt & (MLX4_EN_TX_POLL_MODER - 1)) == 0)
		if (FUNC2(&ring->comp_lock)) {
			FUNC0(priv->dev, cq);
			FUNC3(&ring->comp_lock);
		}
}