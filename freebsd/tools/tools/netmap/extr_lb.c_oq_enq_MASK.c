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
struct overflow_queue {size_t tail; size_t size; int /*<<< orphan*/  n; struct netmap_slot* slots; int /*<<< orphan*/  name; } ;
struct netmap_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct overflow_queue*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct overflow_queue *q, const struct netmap_slot *s)
{
	if (FUNC3(FUNC2(q))) {
		FUNC0("%s: queue full!", q->name);
		FUNC1();
	}
	q->slots[q->tail] = *s;
	q->n++;
	q->tail++;
	if (q->tail >= q->size)
		q->tail = 0;
}