#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* comp ) (TYPE_2__*) ;} ;
struct TYPE_3__ {TYPE_2__ mcq; } ;
struct mlx5e_rq {int /*<<< orphan*/  ifp; TYPE_1__ cq; int /*<<< orphan*/  wq; int /*<<< orphan*/  mtx; int /*<<< orphan*/  watchdog; scalar_t__ enabled; } ;
struct mlx5e_channel {struct mlx5e_rq rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_RQC_STATE_ERR ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5e_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(struct mlx5e_channel *ch)
{
	struct mlx5e_rq *rq = &ch->rq;
	int err;

	FUNC5(&rq->mtx);
	rq->enabled = 0;
	FUNC0(&rq->watchdog);
	FUNC6(&rq->mtx);

	err = FUNC3(rq, MLX5_RQC_STATE_RDY, MLX5_RQC_STATE_ERR);
	if (err != 0) {
		FUNC1(rq->ifp,
		    "mlx5e_modify_rq() from RDY to RST failed: %d\n", err);
	}

	while (!FUNC2(&rq->wq)) {
		FUNC4(1);
		rq->cq.mcq.comp(&rq->cq.mcq);
	}

	/*
	 * Transitioning into RST state will allow the FW to track less ERR state queues,
	 * thus reducing the recv queue flushing time
	 */
	err = FUNC3(rq, MLX5_RQC_STATE_ERR, MLX5_RQC_STATE_RST);
	if (err != 0) {
		FUNC1(rq->ifp,
		    "mlx5e_modify_rq() from ERR to RST failed: %d\n", err);
	}
}