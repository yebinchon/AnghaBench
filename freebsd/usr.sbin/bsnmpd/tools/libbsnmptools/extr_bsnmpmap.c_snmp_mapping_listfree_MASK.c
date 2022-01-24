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
struct snmp_oid2str {scalar_t__ tc; int /*<<< orphan*/  snmp_enum; struct snmp_oid2str* string; } ;
struct snmp_mapping {int dummy; } ;

/* Variables and functions */
 struct snmp_oid2str* FUNC0 (struct snmp_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_mapping*) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_mapping*,int /*<<< orphan*/ ) ; 
 scalar_t__ SNMP_TC_OWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_oid2str*) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC5(struct snmp_mapping *headp)
{
	struct snmp_oid2str *p;

	while ((p = FUNC0(headp)) != NULL) {
		FUNC2(headp, link);

		if (p->string)
			FUNC4(p->string);

		if (p->tc == SNMP_TC_OWN)
			FUNC3(p->snmp_enum);
		FUNC4(p);
	}

	FUNC1(headp);
}