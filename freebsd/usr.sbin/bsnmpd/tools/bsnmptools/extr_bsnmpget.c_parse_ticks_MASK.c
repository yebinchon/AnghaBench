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
struct snmp_value {int /*<<< orphan*/  syntax; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNMP_SYNTAX_TIMETICKS ; 
 scalar_t__ FUNC0 (struct snmp_value*,char*) ; 

__attribute__((used)) static int32_t
FUNC1(struct snmp_value *value, char *val)
{
	if (FUNC0(value, val) < 0)
		return (-1);

	value->syntax = SNMP_SYNTAX_TIMETICKS;
	return (0);
}