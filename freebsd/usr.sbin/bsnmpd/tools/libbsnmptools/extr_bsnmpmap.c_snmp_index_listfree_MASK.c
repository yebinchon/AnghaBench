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
struct snmp_idxlist {int dummy; } ;
struct index {scalar_t__ tc; int /*<<< orphan*/  snmp_enum; } ;

/* Variables and functions */
 scalar_t__ SNMP_TC_OWN ; 
 struct index* FUNC0 (struct snmp_idxlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_idxlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_idxlist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct index*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC5(struct snmp_idxlist *headp)
{
	struct index *i;

	while ((i = FUNC0(headp)) != NULL) {
		FUNC2(headp, link);
		if (i->tc == SNMP_TC_OWN)
			FUNC3(i->snmp_enum);
		FUNC4(i);
	}

	FUNC1(headp);
}