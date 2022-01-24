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
struct apmhook {scalar_t__ ah_order; struct apmhook* ah_next; int /*<<< orphan*/  ah_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static struct apmhook *
FUNC2(struct apmhook **list, struct apmhook *ah)
{
	struct apmhook *p, *prev;

	FUNC0("Add hook \"%s\"\n", ah->ah_name);

	if (ah == NULL)
		FUNC1("illegal apm_hook!");
	prev = NULL;
	for (p = *list; p != NULL; prev = p, p = p->ah_next)
		if (p->ah_order > ah->ah_order)
			break;

	if (prev == NULL) {
		ah->ah_next = *list;
		*list = ah;
	} else {
		ah->ah_next = prev->ah_next;
		prev->ah_next = ah;
	}
	return ah;
}