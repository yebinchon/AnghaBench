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
struct cmp_queue {int /*<<< orphan*/  idx; int /*<<< orphan*/  cmp_task; int /*<<< orphan*/  cmp_taskq; struct nicvf* nic; } ;

/* Variables and functions */
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nicvf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct cmp_queue *cq;
	struct nicvf *nic;
	int cmp_err;

	cq = (struct cmp_queue *)arg;
	nic = cq->nic;

	/* Handle CQ descriptors */
	cmp_err = FUNC2(nic, cq->idx);
	if (FUNC0(cmp_err != 0)) {
		/*
		 * Schedule another thread here since we did not
		 * process the entire CQ due to Tx or Rx CQ parse error.
		 */
		FUNC4(cq->cmp_taskq, &cq->cmp_task);

	}

	FUNC1(nic, NICVF_INTR_CQ, cq->idx);
	/* Reenable interrupt (previously disabled in nicvf_intr_handler() */
	FUNC3(nic, NICVF_INTR_CQ, cq->idx);

}