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
struct TYPE_4__ {int /*<<< orphan*/  ifq_mtx; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifq_mtx; } ;
struct sppp {int /*<<< orphan*/  mtx; TYPE_2__ pp_fastq; TYPE_1__ pp_cpq; int /*<<< orphan*/  pap_my_to_ch; int /*<<< orphan*/ * ch; int /*<<< orphan*/  keepalive_callout; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int IDX_COUNT ; 
 struct sppp* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);
	int i;

	FUNC1(FUNC4(&sp->mtx), ("sppp mutex is not initialized"));

	/* Stop keepalive handler. */
 	FUNC2(&sp->keepalive_callout);

	for (i = 0; i < IDX_COUNT; i++) {
		FUNC2(&sp->ch[i]);
	}
	FUNC2(&sp->pap_my_to_ch);

	FUNC3(&sp->pp_cpq.ifq_mtx);
	FUNC3(&sp->pp_fastq.ifq_mtx);
	FUNC3(&sp->mtx);
}