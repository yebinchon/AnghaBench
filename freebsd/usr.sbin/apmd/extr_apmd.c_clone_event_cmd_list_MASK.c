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
struct event_cmd {struct event_cmd* next; TYPE_1__* op; } ;
struct TYPE_2__ {struct event_cmd* (* clone ) (struct event_cmd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_cmd* (*) (struct event_cmd*)) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct event_cmd* FUNC2 (struct event_cmd*) ; 

struct event_cmd *
FUNC3(struct event_cmd *p)
{
	struct event_cmd dummy;
	struct event_cmd *q = &dummy;
	for ( ;p; p = p->next) {
		FUNC0(p->op->clone);
		if ((q->next = p->op->clone(p)) == NULL)
			FUNC1(1, "out of memory");
		q = q->next;
	}
	q->next = NULL;
	return dummy.next;
}