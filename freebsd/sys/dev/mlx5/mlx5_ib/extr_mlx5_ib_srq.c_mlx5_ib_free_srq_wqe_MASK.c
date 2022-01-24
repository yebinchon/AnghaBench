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
struct mlx5_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5_ib_srq {int tail; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mlx5_wqe_srq_next_seg* FUNC1 (struct mlx5_ib_srq*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5_ib_srq *srq, int wqe_index)
{
	struct mlx5_wqe_srq_next_seg *next;

	/* always called with interrupts disabled. */
	FUNC2(&srq->lock);

	next = FUNC1(srq, srq->tail);
	next->next_wqe_index = FUNC0(wqe_index);
	srq->tail = wqe_index;

	FUNC3(&srq->lock);
}