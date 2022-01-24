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
struct tp_entry {int /*<<< orphan*/  sysindex; } ;
struct tp_entries {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tp_entries*,struct tp_entry*,struct tp_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tp_entries*,struct tp_entry*,int /*<<< orphan*/ ) ; 
 struct tp_entry* FUNC2 (struct tp_entries*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tp_entries*,struct tp_entry*,struct tp_entry**) ; 
 int /*<<< orphan*/  tp_e ; 

__attribute__((used)) static void
FUNC4(struct tp_entries *headp, struct tp_entry *te,
    struct tp_entry **f_tpa)
{
	struct tp_entry *temp;

	if (*f_tpa != NULL)
		FUNC3(headp, te, f_tpa);
	else {
		temp = FUNC2(headp, te->sysindex);

		if (temp == NULL)
			FUNC1(headp, te, tp_e);
		else
			FUNC0(headp, temp, te, tp_e);
		*f_tpa = te;
	}
}