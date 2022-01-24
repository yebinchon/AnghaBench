#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_sq_param {int /*<<< orphan*/  wq; void* sqc; } ;
struct TYPE_9__ {int /*<<< orphan*/  arg; int /*<<< orphan*/  ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/ * db; } ;
struct mlx5e_sq {int bf_buf_size; int tc; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  uar; int /*<<< orphan*/  wq_ctrl; TYPE_4__ stats; struct mlx5e_priv* priv; int /*<<< orphan*/  ifp; int /*<<< orphan*/  mkey_be; TYPE_5__ wq; } ;
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
struct mlx5e_priv {int /*<<< orphan*/  sysctl_ifnet; int /*<<< orphan*/  ifp; TYPE_3__ mr; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channel {int ix; struct mlx5e_priv* priv; } ;
struct mlx5_core_dev {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_6__ {int /*<<< orphan*/  bsddev; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  MLX5E_MAX_TX_MBUF_FRAGS ; 
 int /*<<< orphan*/  MLX5E_MAX_TX_MBUF_SIZE ; 
 int /*<<< orphan*/  MLX5E_MAX_TX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  MLX5E_SQ_STATS_NUM ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 size_t MLX5_SND_DBR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_bf_reg_size ; 
 int FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mlx5_core_dev*,int /*<<< orphan*/ *,void*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mlx5e_sq*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5e_sq_stats_desc ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5e_sq*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int
FUNC15(struct mlx5e_channel *c,
    int tc,
    struct mlx5e_sq_param *param,
    struct mlx5e_sq *sq)
{
	struct mlx5e_priv *priv = c->priv;
	struct mlx5_core_dev *mdev = priv->mdev;
	char buffer[16];
	void *sqc = param->sqc;
	void *sqc_wq = FUNC0(sqc, sqc, wq);
	int err;

	/* Create DMA descriptor TAG */
	if ((err = -FUNC3(
	    FUNC5(mdev->pdev->dev.bsddev),
	    1,				/* any alignment */
	    0,				/* no boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    MLX5E_MAX_TX_PAYLOAD_SIZE,	/* maxsize */
	    MLX5E_MAX_TX_MBUF_FRAGS,	/* nsegments */
	    MLX5E_MAX_TX_MBUF_SIZE,	/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* lockfunc, lockfuncarg */
	    &sq->dma_tag)))
		goto done;

	err = FUNC7(mdev, &sq->uar);
	if (err)
		goto err_free_dma_tag;

	err = FUNC9(mdev, &param->wq, sqc_wq, &sq->wq,
	    &sq->wq_ctrl);
	if (err)
		goto err_unmap_free_uar;

	sq->wq.db = &sq->wq.db[MLX5_SND_DBR];
	sq->bf_buf_size = (1 << FUNC1(mdev, log_bf_reg_size)) / 2;

	err = FUNC11(sq);
	if (err)
		goto err_sq_wq_destroy;

	sq->mkey_be = FUNC6(priv->mr.key);
	sq->ifp = priv->ifp;
	sq->priv = priv;
	sq->tc = tc;

	FUNC13(sq);

	FUNC14(buffer, sizeof(buffer), "txstat%dtc%d", c->ix, tc);
	FUNC12(&sq->stats.ctx, FUNC2(priv->sysctl_ifnet),
	    buffer, mlx5e_sq_stats_desc, MLX5E_SQ_STATS_NUM,
	    sq->stats.arg);

	return (0);

err_sq_wq_destroy:
	FUNC10(&sq->wq_ctrl);

err_unmap_free_uar:
	FUNC8(mdev, &sq->uar);

err_free_dma_tag:
	FUNC4(sq->dma_tag);
done:
	return (err);
}