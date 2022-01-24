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
struct TYPE_4__ {struct _msgT* le_next; } ;
struct _msgT {int msgId; int /*<<< orphan*/  str; TYPE_1__ entries; } ;
struct TYPE_6__ {struct _msgT* lh_first; } ;
struct TYPE_5__ {TYPE_3__ msghead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _msgT*,struct _msgT*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct _msgT*,int /*<<< orphan*/ ) ; 
 int NL_MSGMAX ; 
 TYPE_2__* curSet ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _msgT*,char,int) ; 
 struct _msgT* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void
FUNC7(int msgId, const char *str)
{
	struct _msgT *p, *q;

	if (!curSet)
		FUNC2("can't specify a message when no set exists");

	if (msgId <= 0) {
		FUNC2("msgId's must be greater than zero");
		/* NOTREACHED */
	}
	if (msgId > NL_MSGMAX) {
		FUNC2("msgID exceeds limit");
		/* NOTREACHED */
	}

	p = curSet->msghead.lh_first;
	q = NULL;
	for (; p != NULL && p->msgId < msgId; q = p, p = p->entries.le_next);

	if (p && p->msgId == msgId) {
		FUNC3(p->str);
	} else {
		p = FUNC5(sizeof(struct _msgT));
		FUNC4(p, '\0', sizeof(struct _msgT));

		if (q == NULL) {
			FUNC1(&curSet->msghead, p, entries);
		} else {
			FUNC0(q, p, entries);
		}
	}

	p->msgId = msgId;
	p->str = FUNC6(str);
}