#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  m; } ;
struct TYPE_5__ {int /*<<< orphan*/  m; } ;
struct TYPE_8__ {int /*<<< orphan*/  buf; } ;
struct mlx4_en_tx_ring {size_t size; int /*<<< orphan*/  dma_tag; TYPE_2__ comp_lock; TYPE_1__ tx_lock; TYPE_3__* tx_info; int /*<<< orphan*/  buf_size; TYPE_4__ wqres; int /*<<< orphan*/  qpn; int /*<<< orphan*/  qp; int /*<<< orphan*/  bf; scalar_t__ bf_enabled; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

void FUNC12(struct mlx4_en_priv *priv,
			     struct mlx4_en_tx_ring **pring)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_tx_ring *ring = *pring;
	uint32_t x;
	FUNC2(DRV, priv, "Destroying tx ring, qpn: %d\n", ring->qpn);

	if (ring->bf_enabled)
		FUNC4(mdev->dev, &ring->bf);
	FUNC9(mdev->dev, &ring->qp);
	FUNC7(mdev->dev, &ring->qp);
	FUNC8(priv->mdev->dev, ring->qpn, 1);
	FUNC5(&ring->wqres.buf);
	FUNC6(mdev->dev, &ring->wqres, ring->buf_size);
	for (x = 0; x != ring->size; x++)
		FUNC1(ring->dma_tag, ring->tx_info[x].dma_map);
	FUNC11(ring->tx_info);
	FUNC10(&ring->tx_lock.m);
	FUNC10(&ring->comp_lock.m);
	FUNC0(ring->dma_tag);
	FUNC3(ring);
	*pring = NULL;
}