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
struct qfq_sched {int /*<<< orphan*/ * bitmaps; } ;
struct qfq_group {int /*<<< orphan*/  F; } ;

/* Variables and functions */
 int /*<<< orphan*/  EB ; 
 size_t ER ; 
 int /*<<< orphan*/  IB ; 
 size_t IR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct qfq_group* FUNC1 (struct qfq_sched*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_sched*,unsigned long,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void
FUNC4(struct qfq_sched *q, int index, uint64_t old_finish)
{
	unsigned long mask = FUNC0(q->bitmaps[ER], index + 1);
	struct qfq_group *next;

	if (mask) {
		next = FUNC1(q, mask);
		if (!FUNC2(next->F, old_finish))
			return;
	}

	mask = (1UL << index) - 1;
	FUNC3(q, mask, EB, ER);
	FUNC3(q, mask, IB, IR);
}