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
struct nicvf {int dummy; } ;
struct cmp_queue {int idx; int /*<<< orphan*/  cmp_task; int /*<<< orphan*/  cmp_taskq; struct nicvf* nic; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct nicvf *nic;
	struct cmp_queue *cq;
	int qidx;

	cq = (struct cmp_queue *)arg;
	nic = cq->nic;
	qidx = cq->idx;

	/* Disable interrupts */
	FUNC1(nic, NICVF_INTR_CQ, qidx);

	FUNC2(cq->cmp_taskq, &cq->cmp_task);

	/* Clear interrupt */
	FUNC0(nic, NICVF_INTR_CQ, qidx);

	return (FILTER_HANDLED);
}