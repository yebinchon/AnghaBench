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
struct snmp_enum_tc {int dummy; } ;
struct enum_type {int /*<<< orphan*/  snmp_enum; struct enum_type* name; } ;

/* Variables and functions */
 struct enum_type* FUNC0 (struct snmp_enum_tc*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_enum_tc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enum_type*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC4(struct snmp_enum_tc *headp)
{
	struct enum_type *t;

	while ((t = FUNC0(headp)) != NULL) {
		FUNC1(headp, link);

		if (t->name)
			FUNC3(t->name);
		FUNC2(t->snmp_enum);
		FUNC3(t);
	}
}