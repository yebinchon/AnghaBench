#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct _setT* le_next; } ;
struct _setT {int setId; int /*<<< orphan*/  msghead; TYPE_1__ entries; } ;
struct TYPE_5__ {struct _setT* lh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct _setT*,struct _setT*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct _setT*,int /*<<< orphan*/ ) ; 
 int NL_SETMAX ; 
 struct _setT* curSet ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct _setT*,char,int) ; 
 TYPE_2__ sethead ; 
 struct _setT* FUNC5 (int) ; 

void
FUNC6(int setId)
{
	struct _setT *p, *q;

	if (setId <= 0) {
		FUNC3("setId's must be greater than zero");
		/* NOTREACHED */
	}
	if (setId > NL_SETMAX) {
		FUNC3("setId exceeds limit");
		/* NOTREACHED */
	}

	p = sethead.lh_first;
	q = NULL;
	for (; p != NULL && p->setId < setId; q = p, p = p->entries.le_next);

	if (p && p->setId == setId) {
		;
	} else {
		p = FUNC5(sizeof(struct _setT));
		FUNC4(p, '\0', sizeof(struct _setT));
		FUNC0(&p->msghead);

		p->setId = setId;

		if (q == NULL) {
			FUNC2(&sethead, p, entries);
		} else {
			FUNC1(q, p, entries);
		}
	}

	curSet = p;
}