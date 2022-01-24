#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5e_rx_wqe {TYPE_1__ next; } ;
struct TYPE_7__ {int /*<<< orphan*/  head; } ;
struct mlx5e_rq {scalar_t__ enabled; TYPE_2__ wq; int /*<<< orphan*/  watchdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,struct mlx5e_rq*) ; 
 struct mlx5e_rx_wqe* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct mlx5e_rq*,struct mlx5e_rx_wqe*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct mlx5e_rq *rq)
{
	if (FUNC8(rq->enabled == 0))
		return;

	while (!FUNC4(&rq->wq)) {
		struct mlx5e_rx_wqe *wqe = FUNC3(&rq->wq, rq->wq.head);

		if (FUNC8(FUNC7(rq, wqe, rq->wq.head))) {
			FUNC2(&rq->watchdog, 1, (void *)&mlx5e_post_rx_wqes, rq);
			break;
		}
		FUNC5(&rq->wq, FUNC1(wqe->next.next_wqe_index));
	}

	/* ensure wqes are visible to device before updating doorbell record */
	FUNC0();

	FUNC6(&rq->wq);
}