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
struct qfq_group {int full_slots; int front; struct qfq_class** slots; int /*<<< orphan*/  index; } ;
struct qfq_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int QFQ_MAX_SLOTS ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline struct qfq_class *
FUNC2(struct qfq_group *grp)
{
	int i;

	FUNC0("grp %d full %x", grp->index, grp->full_slots);
	if (!grp->full_slots)
		return NULL;

	i = FUNC1(grp->full_slots) - 1; // zero-based
	if (i > 0) {
		grp->front = (grp->front + i) % QFQ_MAX_SLOTS;
		grp->full_slots >>= i;
	}

	return grp->slots[grp->front];
}