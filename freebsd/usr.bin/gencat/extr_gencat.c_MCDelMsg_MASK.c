#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct _msgT* le_next; } ;
struct _msgT {int msgId; int /*<<< orphan*/  str; TYPE_2__ entries; } ;
struct TYPE_4__ {struct _msgT* lh_first; } ;
struct TYPE_6__ {TYPE_1__ msghead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _msgT*,int /*<<< orphan*/ ) ; 
 TYPE_3__* curSet ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void
FUNC4(int msgId)
{
	struct _msgT *msg;

	if (!curSet)
		FUNC1("you can't delete a message before defining the set");

	msg = curSet->msghead.lh_first;
	for (; msg != NULL && msg->msgId < msgId; msg = msg->entries.le_next);

	if (msg && msg->msgId == msgId) {
		FUNC2(msg->str);
		FUNC0(msg, entries);
		return;
	}
	FUNC3(NULL, "specified msg doesn't exist");
}