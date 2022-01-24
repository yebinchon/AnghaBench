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
struct TYPE_5__ {int /*<<< orphan*/  (* comp ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_2__ mcq; } ;
struct TYPE_6__ {scalar_t__ wqe_ctr; } ;
struct mlx5e_rq {int enabled; TYPE_1__ cq; int /*<<< orphan*/  ifp; TYPE_3__ wq; } ;
struct mlx5e_channel {struct mlx5e_rq rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct mlx5e_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(struct mlx5e_channel *ch)
{
	struct mlx5e_rq *rq = &ch->rq;
	int err;

	rq->wq.wqe_ctr = 0;
	FUNC1(&rq->wq);
	err = FUNC2(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
	if (err != 0) {
		FUNC0(rq->ifp,
		    "mlx5e_modify_rq() from RST to RDY failed: %d\n", err);
        }

	rq->enabled = 1;

	rq->cq.mcq.comp(&rq->cq.mcq);
}