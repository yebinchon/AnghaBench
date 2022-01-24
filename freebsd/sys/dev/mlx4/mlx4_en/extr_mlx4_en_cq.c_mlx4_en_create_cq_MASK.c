#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mlx4_en_priv {int /*<<< orphan*/  dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_3__* dev; } ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct TYPE_12__ {TYPE_2__ direct; } ;
struct TYPE_11__ {TYPE_5__ buf; } ;
struct mlx4_en_cq {int size; int buf_size; int ring; int is_tx; TYPE_4__ wqres; struct mlx4_cqe* buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  vector; int /*<<< orphan*/  tq; int /*<<< orphan*/  cq_task; } ;
struct mlx4_cqe {int dummy; } ;
typedef  enum cq_type { ____Placeholder_cq_type } cq_type ;
struct TYPE_8__ {int cqe_size; int /*<<< orphan*/  num_comp_vectors; } ;
struct TYPE_10__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PI_NET ; 
 int RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_cq*) ; 
 struct mlx4_en_cq* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mlx4_en_cq* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_4__*,int,int) ; 
 int FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  mlx4_en_rx_que ; 
 int /*<<< orphan*/  mlx4_en_tx_que ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int FUNC12(struct mlx4_en_priv *priv,
		      struct mlx4_en_cq **pcq,
		      int entries, int ring, enum cq_type mode,
		      int node)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_cq *cq;
	int err;

	cq = FUNC5(sizeof(*cq), GFP_KERNEL, node);
	if (!cq) {
		cq = FUNC4(sizeof(*cq), GFP_KERNEL);
		if (!cq) {
			FUNC1(priv, "Failed to allocate CQ structure\n");
			return -ENOMEM;
		}
	}

	cq->size = entries;
	cq->buf_size = cq->size * mdev->dev->caps.cqe_size;

	cq->tq = FUNC10("mlx4_en_que", M_NOWAIT,
                        taskqueue_thread_enqueue, &cq->tq);
        if (mode == RX) {
		FUNC0(&cq->cq_task, 0, mlx4_en_rx_que, cq);
		FUNC11(&cq->tq, 1, PI_NET, "%s rx cq",
				FUNC2(priv->dev));

	} else {
		FUNC0(&cq->cq_task, 0, mlx4_en_tx_que, cq);
		FUNC11(&cq->tq, 1, PI_NET, "%s tx cq",
				FUNC2(priv->dev));
	}

	cq->ring = ring;
	cq->is_tx = mode;
	cq->vector = mdev->dev->caps.num_comp_vectors;
	FUNC9(&cq->lock);

	err = FUNC6(mdev->dev, &cq->wqres,
				cq->buf_size, 2 * PAGE_SIZE);
	if (err)
		goto err_cq;

	err = FUNC7(&cq->wqres.buf);
	if (err)
		goto err_res;

	cq->buf = (struct mlx4_cqe *)cq->wqres.buf.direct.buf;
	*pcq = cq;

	return 0;

err_res:
	FUNC8(mdev->dev, &cq->wqres, cq->buf_size);
err_cq:
	FUNC3(cq);
	*pcq = NULL;
	return err;
}