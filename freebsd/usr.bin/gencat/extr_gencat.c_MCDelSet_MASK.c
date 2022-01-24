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
struct TYPE_5__ {struct _setT* lh_first; } ;
struct TYPE_4__ {struct _setT* le_next; } ;
struct _setT {int setId; int /*<<< orphan*/  str; TYPE_2__ msghead; TYPE_1__ entries; } ;
struct _msgT {int setId; int /*<<< orphan*/  str; TYPE_2__ msghead; TYPE_1__ entries; } ;
struct TYPE_6__ {struct _setT* lh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _setT*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ sethead ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void
FUNC3(int setId)
{
	struct _setT *set;
	struct _msgT *msg;

	set = sethead.lh_first;
	for (; set != NULL && set->setId < setId; set = set->entries.le_next);

	if (set && set->setId == setId) {

		msg = set->msghead.lh_first;
		while (msg) {
			FUNC1(msg->str);
			FUNC0(msg, entries);
		}

		FUNC0(set, entries);
		return;
	}
	FUNC2(NULL, "specified set doesn't exist");
}