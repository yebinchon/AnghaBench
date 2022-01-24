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
struct mlx4_ib_wq {unsigned int head; unsigned int tail; unsigned int max_post; } ;
struct mlx4_ib_cq {int /*<<< orphan*/  lock; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_cq* FUNC3 (struct ib_cq*) ; 

__attribute__((used)) static int FUNC4(struct mlx4_ib_wq *wq, int nreq, struct ib_cq *ib_cq)
{
	unsigned cur;
	struct mlx4_ib_cq *cq;

	cur = wq->head - wq->tail;
	if (FUNC0(cur + nreq < wq->max_post))
		return 0;

	cq = FUNC3(ib_cq);
	FUNC1(&cq->lock);
	cur = wq->head - wq->tail;
	FUNC2(&cq->lock);

	return cur + nreq >= wq->max_post;
}