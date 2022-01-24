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
typedef  unsigned int uint64_t ;
struct qfq_sched {int dummy; } ;
struct qfq_group {unsigned int S; unsigned int slot_shift; unsigned int full_slots; unsigned int front; } ;

/* Variables and functions */
 unsigned int QFQ_MAX_SLOTS ; 

__attribute__((used)) static inline void
FUNC0(struct qfq_sched *q, struct qfq_group *grp, uint64_t roundedS)
{
	unsigned int i = (grp->S - roundedS) >> grp->slot_shift;

	(void)q;
	grp->full_slots <<= i;
	grp->front = (grp->front - i) % QFQ_MAX_SLOTS;
}