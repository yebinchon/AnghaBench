#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_23__ {scalar_t__ map; int /*<<< orphan*/  buf; } ;
struct TYPE_16__ {TYPE_6__ direct; } ;
struct TYPE_15__ {TYPE_11__ buf; } ;
struct TYPE_17__ {TYPE_7__* uar; } ;
struct TYPE_26__ {int /*<<< orphan*/  event; } ;
struct TYPE_22__ {int /*<<< orphan*/  m; } ;
struct TYPE_21__ {int /*<<< orphan*/  m; } ;
struct mlx4_en_tx_ring {int size; int size_mask; int stride; int bf_enabled; int queue_index; int /*<<< orphan*/  dma_tag; TYPE_8__* tx_info; int /*<<< orphan*/  buf_size; TYPE_10__ wqres; int /*<<< orphan*/  qpn; TYPE_13__ bf; TYPE_9__ qp; int /*<<< orphan*/  buf; TYPE_5__ comp_lock; TYPE_4__ tx_lock; int /*<<< orphan*/  inline_thold; } ;
struct mlx4_en_tx_info {int dummy; } ;
struct mlx4_en_priv {TYPE_3__* prof; struct mlx4_en_dev* mdev; } ;
struct TYPE_24__ {int /*<<< orphan*/  map; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  uar_map; TYPE_7__ priv_uar; TYPE_2__* pdev; } ;
struct TYPE_25__ {int /*<<< orphan*/  dma_map; } ;
struct TYPE_20__ {int /*<<< orphan*/  inline_thold; } ;
struct TYPE_18__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_19__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  DRV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_INLINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_PKT_LEN ; 
 int /*<<< orphan*/  MLX4_EN_PAGE_SIZE ; 
 int /*<<< orphan*/  MLX4_EN_TX_MAX_MBUF_FRAGS ; 
 int /*<<< orphan*/  MLX4_EN_TX_MAX_MBUF_SIZE ; 
 int /*<<< orphan*/  MLX4_EN_TX_MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  MLX4_RESERVE_ETH_BF_QP ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_en_tx_ring*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_13__*,int) ; 
 int FUNC15 (TYPE_11__*) ; 
 int /*<<< orphan*/  mlx4_en_sqp_event ; 
 int /*<<< orphan*/  FUNC16 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_8__*) ; 

int FUNC23(struct mlx4_en_priv *priv,
			   struct mlx4_en_tx_ring **pring, u32 size,
			   u16 stride, int node, int queue_idx)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_tx_ring *ring;
	uint32_t x;
	int tmp;
	int err;

	ring = FUNC12(sizeof(struct mlx4_en_tx_ring), GFP_KERNEL, node);
	if (!ring) {
		ring = FUNC11(sizeof(struct mlx4_en_tx_ring), GFP_KERNEL);
		if (!ring) {
			FUNC9(priv, "Failed allocating TX ring\n");
			return -ENOMEM;
		}
	}

	/* Create DMA descriptor TAG */
	if ((err = -FUNC3(
	    FUNC7(mdev->pdev->dev.bsddev),
	    1,					/* any alignment */
	    0,					/* no boundary */
	    BUS_SPACE_MAXADDR,			/* lowaddr */
	    BUS_SPACE_MAXADDR,			/* highaddr */
	    NULL, NULL,				/* filter, filterarg */
	    MLX4_EN_TX_MAX_PAYLOAD_SIZE,	/* maxsize */
	    MLX4_EN_TX_MAX_MBUF_FRAGS,		/* nsegments */
	    MLX4_EN_TX_MAX_MBUF_SIZE,		/* maxsegsize */
	    0,					/* flags */
	    NULL, NULL,				/* lockfunc, lockfuncarg */
	    &ring->dma_tag)))
		goto done;

	ring->size = size;
	ring->size_mask = size - 1;
	ring->stride = stride;
	ring->inline_thold = FUNC1(MIN_PKT_LEN, FUNC2(priv->prof->inline_thold, MAX_INLINE));
	FUNC21(&ring->tx_lock.m, "mlx4 tx", NULL, MTX_DEF);
	FUNC21(&ring->comp_lock.m, "mlx4 comp", NULL, MTX_DEF);

	tmp = size * sizeof(struct mlx4_en_tx_info);
	ring->tx_info = FUNC12(tmp, GFP_KERNEL, node);
	if (!ring->tx_info) {
		ring->tx_info = FUNC11(tmp, GFP_KERNEL);
		if (!ring->tx_info) {
			err = -ENOMEM;
			goto err_ring;
		}
	}

	/* Create DMA descriptor MAPs */
	for (x = 0; x != size; x++) {
		err = -FUNC5(ring->dma_tag, 0,
		    &ring->tx_info[x].dma_map);
		if (err != 0) {
			while (x--) {
				FUNC6(ring->dma_tag,
				    ring->tx_info[x].dma_map);
			}
			goto err_info;
		}
	}

	FUNC8(DRV, priv, "Allocated tx_info ring at addr:%p size:%d\n",
		 ring->tx_info, tmp);

	ring->buf_size = FUNC0(size * ring->stride, MLX4_EN_PAGE_SIZE);

	/* Allocate HW buffers on provided NUMA node */
	err = FUNC13(mdev->dev, &ring->wqres, ring->buf_size,
				 2 * PAGE_SIZE);
	if (err) {
		FUNC9(priv, "Failed allocating hwq resources\n");
		goto err_dma_map;
	}

	err = FUNC15(&ring->wqres.buf);
	if (err) {
		FUNC9(priv, "Failed to map TX buffer\n");
		goto err_hwq_res;
	}

	ring->buf = ring->wqres.buf.direct.buf;

	FUNC8(DRV, priv, "Allocated TX ring (addr:%p) - buf:%p size:%d "
	       "buf_size:%d dma:%llx\n", ring, ring->buf, ring->size,
	       ring->buf_size, (unsigned long long) ring->wqres.buf.direct.map);

	err = FUNC20(mdev->dev, 1, 1, &ring->qpn,
				    MLX4_RESERVE_ETH_BF_QP);
	if (err) {
		FUNC9(priv, "failed reserving qp for TX ring\n");
		goto err_map;
	}

	err = FUNC18(mdev->dev, ring->qpn, &ring->qp, GFP_KERNEL);
	if (err) {
		FUNC9(priv, "Failed allocating qp %d\n", ring->qpn);
		goto err_reserve;
	}
	ring->qp.event = mlx4_en_sqp_event;

	err = FUNC14(mdev->dev, &ring->bf, node);
	if (err) {
		FUNC8(DRV, priv, "working without blueflame (%d)", err);
		ring->bf.uar = &mdev->priv_uar;
		ring->bf.uar->map = mdev->uar_map;
		ring->bf_enabled = false;
	} else
		ring->bf_enabled = true;
	ring->queue_index = queue_idx;

	*pring = ring;
	return 0;

err_reserve:
	FUNC19(mdev->dev, ring->qpn, 1);
err_map:
	FUNC16(&ring->wqres.buf);
err_hwq_res:
	FUNC17(mdev->dev, &ring->wqres, ring->buf_size);
err_dma_map:
	for (x = 0; x != size; x++)
		FUNC6(ring->dma_tag, ring->tx_info[x].dma_map);
err_info:
	FUNC22(ring->tx_info);
err_ring:
	FUNC4(ring->dma_tag);
done:
	FUNC10(ring);
	return err;
}