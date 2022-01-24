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
struct tp_entry {scalar_t__ sysindex; int /*<<< orphan*/  tp_addr; } ;
struct tp_entries {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tp_entry*,struct tp_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tp_entries*,struct tp_entry*,int /*<<< orphan*/ ) ; 
 struct tp_entry* FUNC2 (struct tp_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tp_e ; 

__attribute__((used)) static void
FUNC5(struct tp_entries *headp,
	struct tp_entry *ta, struct tp_entry **f_tpa)
{
	struct tp_entry *t1;

	FUNC3(f_tpa != NULL);

	for (t1 = *f_tpa;
	    t1 != NULL && ta->sysindex == t1->sysindex;
	    t1 = FUNC2(t1, tp_e)) {
		if (FUNC4(ta->tp_addr, t1->tp_addr) < 0) {
			FUNC0(t1, ta, tp_e);
			if (*f_tpa == t1)
				(*f_tpa) = ta;
			return;
		}
	}

	if (t1 == NULL)
		FUNC1(headp, ta, tp_e);
	else
		FUNC0(t1, ta, tp_e);
}