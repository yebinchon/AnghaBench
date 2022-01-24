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
struct mlx4_en_rx_ring {int buf; int /*<<< orphan*/  lro; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;

/* Variables and functions */
 int TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx4_en_priv *priv,
				struct mlx4_en_rx_ring *ring)
{
#ifdef INET
	tcp_lro_free(&ring->lro);
#endif
	FUNC0(priv, ring);
	if (sizeof(struct mlx4_en_rx_desc) <= TXBB_SIZE)
		ring->buf -= TXBB_SIZE;
}