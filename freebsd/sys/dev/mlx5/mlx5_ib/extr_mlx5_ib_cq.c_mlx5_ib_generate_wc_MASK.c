#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ib_wc {scalar_t__ status; } ;
struct mlx5_ib_wc {int /*<<< orphan*/  list; struct ib_wc wc; } ;
struct mlx5_ib_cq {scalar_t__ notify_flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  notify_work; int /*<<< orphan*/  wc_list; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_WC_SUCCESS ; 
 struct mlx5_ib_wc* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx5_ib_cq* FUNC5 (struct ib_cq*) ; 

int FUNC6(struct ib_cq *ibcq, struct ib_wc *wc)
{
	struct mlx5_ib_wc *soft_wc;
	struct mlx5_ib_cq *cq = FUNC5(ibcq);
	unsigned long flags;

	soft_wc = FUNC0(sizeof(*soft_wc), GFP_ATOMIC);
	if (!soft_wc)
		return -ENOMEM;

	soft_wc->wc = *wc;
	FUNC3(&cq->lock, flags);
	FUNC1(&soft_wc->list, &cq->wc_list);
	if (cq->notify_flags == IB_CQ_NEXT_COMP ||
	    wc->status != IB_WC_SUCCESS) {
		cq->notify_flags = 0;
		FUNC2(&cq->notify_work);
	}
	FUNC4(&cq->lock, flags);

	return 0;
}