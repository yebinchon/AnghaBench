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
typedef  int /*<<< orphan*/  u64 ;
struct mlx5e_cq_param {int /*<<< orphan*/  cqc; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma; } ;
struct TYPE_10__ {int npages; int page_shift; } ;
struct TYPE_8__ {TYPE_2__ db; TYPE_5__ buf; } ;
struct mlx5_core_cq {TYPE_1__* uar; } ;
struct mlx5e_cq {TYPE_4__* priv; TYPE_3__ wq_ctrl; struct mlx5_core_cq mcq; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_9__ {int /*<<< orphan*/  doorbell_lock; int /*<<< orphan*/  mdev; } ;
struct TYPE_6__ {int index; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  c_eqn ; 
 int /*<<< orphan*/  cq_context ; 
 int /*<<< orphan*/  create_cq_in ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mlx5_core_cq*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int*,int*) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5e_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pas ; 
 int /*<<< orphan*/  uar_page ; 

__attribute__((used)) static int
FUNC12(struct mlx5e_cq *cq, struct mlx5e_cq_param *param, int eq_ix)
{
	struct mlx5_core_cq *mcq = &cq->mcq;
	void *in;
	void *cqc;
	int inlen;
	int irqn_not_used;
	int eqn;
	int err;

	inlen = FUNC4(create_cq_in) +
	    sizeof(u64) * cq->wq_ctrl.buf.npages;
	in = FUNC10(inlen);
	if (in == NULL)
		return (-ENOMEM);

	cqc = FUNC0(create_cq_in, in, cq_context);

	FUNC6(cqc, param->cqc, sizeof(param->cqc));

	FUNC8(&cq->wq_ctrl.buf,
	    (__be64 *) FUNC0(create_cq_in, in, pas));

	FUNC9(cq->priv->mdev, eq_ix, &eqn, &irqn_not_used);

	FUNC2(cqc, cqc, c_eqn, eqn);
	FUNC2(cqc, cqc, uar_page, mcq->uar->index);
	FUNC2(cqc, cqc, log_page_size, cq->wq_ctrl.buf.page_shift -
	    PAGE_SHIFT);
	FUNC3(cqc, cqc, dbr_addr, cq->wq_ctrl.db.dma);

	err = FUNC7(cq->priv->mdev, mcq, in, inlen);

	FUNC5(in);

	if (err)
		return (err);

	FUNC11(cq, FUNC1(&cq->priv->doorbell_lock));

	return (0);
}