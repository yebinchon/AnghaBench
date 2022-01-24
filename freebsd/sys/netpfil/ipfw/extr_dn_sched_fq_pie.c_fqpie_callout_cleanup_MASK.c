#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pie_status {int /*<<< orphan*/  lock_mtx; } ;
struct fq_pie_si_extra {struct fq_pie_si_extra* flows; int /*<<< orphan*/  nr_active_q; } ;
struct fq_pie_flow {struct fq_pie_si_extra* psi_extra; struct pie_status pst; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 TYPE_1__ fq_pie_desc ; 
 int /*<<< orphan*/  FUNC2 (struct fq_pie_si_extra*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *x)
{
	struct fq_pie_flow *q = x;
	struct pie_status *pst = &q->pst;
	struct fq_pie_si_extra *psi_extra;

	FUNC4(&pst->lock_mtx);
	FUNC3(&pst->lock_mtx);
	psi_extra = q->psi_extra;
	
	FUNC0();
	psi_extra->nr_active_q--;

	/* when all sub-queues are destroyed, free flows fq_pie extra vars memory */
	if (!psi_extra->nr_active_q) {
		FUNC2(psi_extra->flows, M_DUMMYNET);
		FUNC2(psi_extra, M_DUMMYNET);
		fq_pie_desc.ref_count--;
	}
	FUNC1();
}