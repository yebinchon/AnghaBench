#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snmp_toolinfo {int /*<<< orphan*/  snmp_cnt64list; int /*<<< orphan*/  snmp_ticklist; int /*<<< orphan*/  snmp_gaugelist; int /*<<< orphan*/  snmp_cntlist; int /*<<< orphan*/  snmp_iplist; int /*<<< orphan*/  snmp_oidlist; int /*<<< orphan*/  snmp_octlist; int /*<<< orphan*/  snmp_intlist; int /*<<< orphan*/ * mappings; } ;
struct TYPE_2__ {int syntax; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef  int int32_t ;

/* Variables and functions */
#define  SNMP_SYNTAX_COUNTER 138 
#define  SNMP_SYNTAX_COUNTER64 137 
#define  SNMP_SYNTAX_ENDOFMIBVIEW 136 
#define  SNMP_SYNTAX_GAUGE 135 
#define  SNMP_SYNTAX_INTEGER 134 
#define  SNMP_SYNTAX_IPADDRESS 133 
#define  SNMP_SYNTAX_NOSUCHINSTANCE 132 
#define  SNMP_SYNTAX_NOSUCHOBJECT 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int FUNC0 (struct snmp_toolinfo*,struct snmp_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct snmp_object*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int32_t
FUNC3(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s)
{
	if (snmptoolctx == NULL || snmptoolctx->mappings == NULL || s == NULL)
		return (-1);

	switch (s->val.syntax) {
		case SNMP_SYNTAX_INTEGER:
			return (FUNC1(&snmptoolctx->snmp_intlist, s));
		case SNMP_SYNTAX_OCTETSTRING:
			return (FUNC1(&snmptoolctx->snmp_octlist, s));
		case SNMP_SYNTAX_OID:
			return (FUNC1(&snmptoolctx->snmp_oidlist, s));
		case SNMP_SYNTAX_IPADDRESS:
			return (FUNC1(&snmptoolctx->snmp_iplist, s));
		case SNMP_SYNTAX_COUNTER:
			return (FUNC1(&snmptoolctx->snmp_cntlist, s));
		case SNMP_SYNTAX_GAUGE:
			return (FUNC1(
			    &snmptoolctx->snmp_gaugelist, s));
		case SNMP_SYNTAX_TIMETICKS:
			return (FUNC1(
			    &snmptoolctx->snmp_ticklist, s));
		case SNMP_SYNTAX_COUNTER64:
			return (FUNC1(
			    &snmptoolctx->snmp_cnt64list, s));
		case SNMP_SYNTAX_NOSUCHOBJECT:
			/* FALLTHROUGH */
		case SNMP_SYNTAX_NOSUCHINSTANCE:
			/* FALLTHROUGH */
		case SNMP_SYNTAX_ENDOFMIBVIEW:
			return (FUNC0(snmptoolctx, s));
		default:
			FUNC2("Unknown syntax - %d", s->val.syntax);
			break;
	}

	return (-1);
}