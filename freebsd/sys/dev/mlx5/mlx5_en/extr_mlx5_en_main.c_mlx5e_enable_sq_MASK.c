#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx5e_sq_param {int /*<<< orphan*/  sqc; } ;
struct TYPE_14__ {int npages; int page_shift; } ;
struct TYPE_11__ {int /*<<< orphan*/  dma; } ;
struct TYPE_12__ {TYPE_7__ buf; TYPE_4__ db; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_8__ {int cqn; } ;
struct TYPE_9__ {TYPE_1__ mcq; } ;
struct mlx5e_sq {int /*<<< orphan*/  sqn; TYPE_6__* priv; TYPE_5__ wq_ctrl; TYPE_3__ uar; TYPE_2__ cq; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_13__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_SQC_STATE_RST ; 
 int FUNC3 (void*) ; 
 int MLX5_WQ_TYPE_CYCLIC ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  cqn ; 
 void* create_sq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  flush_in_error_en ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  log_wq_pg_sz ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 
 void* pas ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  tis_lst_sz ; 
 int /*<<< orphan*/  tis_num_0 ; 
 int /*<<< orphan*/  uar_page ; 
 int /*<<< orphan*/  wq_type ; 

int
FUNC9(struct mlx5e_sq *sq, struct mlx5e_sq_param *param,
    int tis_num)
{
	void *in;
	void *sqc;
	void *wq;
	int inlen;
	int err;

	inlen = FUNC3(create_sq_in) +
	    sizeof(u64) * sq->wq_ctrl.buf.npages;
	in = FUNC8(inlen);
	if (in == NULL)
		return (-ENOMEM);

	sqc = FUNC0(create_sq_in, in, ctx);
	wq = FUNC0(sqc, sqc, wq);

	FUNC5(sqc, param->sqc, sizeof(param->sqc));

	FUNC1(sqc, sqc, tis_num_0, tis_num);
	FUNC1(sqc, sqc, cqn, sq->cq.mcq.cqn);
	FUNC1(sqc, sqc, state, MLX5_SQC_STATE_RST);
	FUNC1(sqc, sqc, tis_lst_sz, 1);
	FUNC1(sqc, sqc, flush_in_error_en, 1);

	FUNC1(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
	FUNC1(wq, wq, uar_page, sq->uar.index);
	FUNC1(wq, wq, log_wq_pg_sz, sq->wq_ctrl.buf.page_shift -
	    PAGE_SHIFT);
	FUNC2(wq, wq, dbr_addr, sq->wq_ctrl.db.dma);

	FUNC7(&sq->wq_ctrl.buf,
	    (__be64 *) FUNC0(wq, wq, pas));

	err = FUNC6(sq->priv->mdev, in, inlen, &sq->sqn);

	FUNC4(in);

	return (err);
}