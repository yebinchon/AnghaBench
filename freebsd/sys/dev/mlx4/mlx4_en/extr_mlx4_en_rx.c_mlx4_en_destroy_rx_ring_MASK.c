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
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/ * mbuf; } ;
struct TYPE_6__ {int /*<<< orphan*/  buf; } ;
struct mlx4_en_rx_ring {int /*<<< orphan*/  dma_tag; TYPE_2__* mbuf; TYPE_1__ spare; TYPE_3__ wqres; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 scalar_t__ TXBB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

void FUNC10(struct mlx4_en_priv *priv,
			     struct mlx4_en_rx_ring **pring,
			     u32 size)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_rx_ring *ring = *pring;
	uint32_t x;

	FUNC7(&ring->wqres.buf);
	FUNC8(mdev->dev, &ring->wqres, size * sizeof(struct mlx4_en_rx_desc) + TXBB_SIZE);
	for (x = 0; x != size; x++)
		FUNC1(ring->dma_tag, ring->mbuf[x].dma_map);
	/* free spare mbuf, if any */
	if (ring->spare.mbuf != NULL) {
		FUNC2(ring->dma_tag, ring->spare.dma_map,
		    BUS_DMASYNC_POSTREAD);
		FUNC3(ring->dma_tag, ring->spare.dma_map);
		FUNC5(ring->spare.mbuf);
	}
	FUNC1(ring->dma_tag, ring->spare.dma_map);
	FUNC9(ring->mbuf);
	FUNC0(ring->dma_tag);
	FUNC4(ring);
	*pring = NULL;
#ifdef CONFIG_RFS_ACCEL
	mlx4_en_cleanup_filters(priv, ring);
#endif
}