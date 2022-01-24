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
typedef  int /*<<< orphan*/  uint64_t ;
struct qfq_sched {int* bitmaps; int /*<<< orphan*/  V; } ;
struct qfq_group {int /*<<< orphan*/  S; } ;
typedef  int bitmap ;

/* Variables and functions */
 size_t ER ; 
 size_t IB ; 
 size_t IR ; 
 struct qfq_group* FUNC0 (struct qfq_sched*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qfq_sched*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct qfq_sched *q, uint64_t old_V)
{
	bitmap ineligible;

	ineligible = q->bitmaps[IR] | q->bitmaps[IB];
	if (ineligible) {
		if (!q->bitmaps[ER]) {
			struct qfq_group *grp;
			grp = FUNC0(q, ineligible);
			if (FUNC1(grp->S, q->V))
				q->V = grp->S;
		}
		FUNC2(q, old_V);
	}
}