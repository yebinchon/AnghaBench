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
struct enum_type {scalar_t__ snmp_enum; struct enum_type* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct enum_type*) ; 

void
FUNC2(struct enum_type *tc)
{
	if (tc->name)
		FUNC1(tc->name);
	if (tc->snmp_enum)
		FUNC0(tc->snmp_enum);
	FUNC1(tc);
}