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
struct TYPE_2__ {int /*<<< orphan*/  op; int /*<<< orphan*/  name; int /*<<< orphan*/  len; int /*<<< orphan*/ * next; } ;
struct event_cmd_exec {int /*<<< orphan*/ * line; TYPE_1__ evcmd; } ;
struct event_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

struct event_cmd *
FUNC3(void *this)
{
	struct event_cmd_exec * newone = (struct event_cmd_exec *) FUNC1(this);
	struct event_cmd_exec * oldone = this;

	newone->evcmd.next = NULL;
	newone->evcmd.len = oldone->evcmd.len;
	newone->evcmd.name = oldone->evcmd.name;
	newone->evcmd.op = oldone->evcmd.op;
	if ((newone->line = FUNC2(oldone->line)) == NULL)
		FUNC0(1, "out of memory");
	return (struct event_cmd *) newone;
}