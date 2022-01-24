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
struct rbdr {int /*<<< orphan*/  rbdr_task_nowait; int /*<<< orphan*/  rbdr_taskq; } ;
struct queue_set {int rbdr_cnt; struct rbdr* rbdr; } ;
struct nicvf {struct queue_set* qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  NICVF_INTR_RBDR ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct nicvf *nic;
	struct queue_set *qs;
	struct rbdr *rbdr;
	int qidx;

	nic = (struct nicvf *)arg;

	/* Disable RBDR interrupt and schedule softirq */
	for (qidx = 0; qidx < nic->qs->rbdr_cnt; qidx++) {
		if (!FUNC2(nic, NICVF_INTR_RBDR, qidx))
			continue;
		FUNC1(nic, NICVF_INTR_RBDR, qidx);

		qs = nic->qs;
		rbdr = &qs->rbdr[qidx];
		FUNC3(rbdr->rbdr_taskq, &rbdr->rbdr_task_nowait);
		/* Clear interrupt */
		FUNC0(nic, NICVF_INTR_RBDR, qidx);
	}
}