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
struct event_cmd {int name; TYPE_1__* op; struct event_cmd* next; } ;
struct TYPE_2__ {int (* act ) (struct event_cmd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int (*) (struct event_cmd*)) ; 
 int FUNC1 (struct event_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ verbose ; 

int
FUNC3(struct event_cmd *p)
{
	int status = 0;

	for (; p; p = p->next) {
		FUNC0(p->op->act);
		if (verbose)
			FUNC2(LOG_INFO, "action: %s", p->name);
		status = p->op->act(p);
		if (status) {
			FUNC2(LOG_NOTICE, "command finished with %d\n", status);
			break;
		}
	}
	return status;
}