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
struct snmp_toolinfo {int /*<<< orphan*/  snmp_nodelist; int /*<<< orphan*/ * mappings; } ;
struct snmp_object {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct snmp_object*) ; 

int32_t
FUNC1(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s)
{
	if (snmptoolctx == NULL || snmptoolctx->mappings == NULL || s == NULL)
		return (-1);

	return (FUNC0(&snmptoolctx->snmp_nodelist, s));
}