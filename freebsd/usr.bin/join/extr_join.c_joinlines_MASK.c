#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
struct TYPE_7__ {size_t setcnt; int /*<<< orphan*/ * set; } ;
typedef  TYPE_1__ INPUT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(INPUT *F1, INPUT *F2)
{
	u_long cnt1, cnt2;

	/*
	 * Output the results of a join comparison.  The output may be from
	 * either file 1 or file 2 (in which case the first argument is the
	 * file from which to output) or from both.
	 */
	if (F2 == NULL) {
		for (cnt1 = 0; cnt1 < F1->setcnt; ++cnt1)
			FUNC0(F1, &F1->set[cnt1]);
		return;
	}
	for (cnt1 = 0; cnt1 < F1->setcnt; ++cnt1)
		for (cnt2 = 0; cnt2 < F2->setcnt; ++cnt2)
			FUNC1(F1, &F1->set[cnt1], F2, &F2->set[cnt2]);
}