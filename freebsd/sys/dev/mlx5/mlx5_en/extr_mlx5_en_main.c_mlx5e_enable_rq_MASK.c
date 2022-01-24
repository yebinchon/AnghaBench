#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx5e_rq_param {int /*<<< orphan*/  rqc; } ;
struct TYPE_12__ {int npages; int page_shift; } ;
struct TYPE_10__ {int /*<<< orphan*/  dma; } ;
struct TYPE_11__ {TYPE_6__ buf; TYPE_4__ db; } ;
struct mlx5e_rq {int /*<<< orphan*/  rqn; TYPE_5__ wq_ctrl; struct mlx5e_channel* channel; } ;
struct mlx5e_priv {int counter_set_id; struct mlx5_core_dev* mdev; } ;
struct TYPE_7__ {int cqn; } ;
struct TYPE_8__ {TYPE_1__ mcq; } ;
struct TYPE_9__ {TYPE_2__ cq; } ;
struct mlx5e_channel {TYPE_3__ rq; struct mlx5e_priv* priv; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,void*) ; 
 int MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  counter_set_id ; 
 int /*<<< orphan*/  cqn ; 
 void* create_rq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  flush_in_error_en ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  log_wq_pg_sz ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 
 void* pas ; 
 int /*<<< orphan*/  state ; 

__attribute__((used)) static int
FUNC9(struct mlx5e_rq *rq, struct mlx5e_rq_param *param)
{
	struct mlx5e_channel *c = rq->channel;
	struct mlx5e_priv *priv = c->priv;
	struct mlx5_core_dev *mdev = priv->mdev;

	void *in;
	void *rqc;
	void *wq;
	int inlen;
	int err;

	inlen = FUNC3(create_rq_in) +
	    sizeof(u64) * rq->wq_ctrl.buf.npages;
	in = FUNC8(inlen);
	if (in == NULL)
		return (-ENOMEM);

	rqc = FUNC0(create_rq_in, in, ctx);
	wq = FUNC0(rqc, rqc, wq);

	FUNC5(rqc, param->rqc, sizeof(param->rqc));

	FUNC1(rqc, rqc, cqn, c->rq.cq.mcq.cqn);
	FUNC1(rqc, rqc, state, MLX5_RQC_STATE_RST);
	FUNC1(rqc, rqc, flush_in_error_en, 1);
	if (priv->counter_set_id >= 0)
		FUNC1(rqc, rqc, counter_set_id, priv->counter_set_id);
	FUNC1(wq, wq, log_wq_pg_sz, rq->wq_ctrl.buf.page_shift -
	    PAGE_SHIFT);
	FUNC2(wq, wq, dbr_addr, rq->wq_ctrl.db.dma);

	FUNC7(&rq->wq_ctrl.buf,
	    (__be64 *) FUNC0(wq, wq, pas));

	err = FUNC6(mdev, in, inlen, &rq->rqn);

	FUNC4(in);

	return (err);
}