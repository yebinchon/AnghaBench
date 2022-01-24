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
struct snmp_toolinfo {int /*<<< orphan*/  snmp_nodelist; int /*<<< orphan*/  snmp_cnt64list; int /*<<< orphan*/  snmp_ticklist; int /*<<< orphan*/  snmp_gaugelist; int /*<<< orphan*/  snmp_cntlist; int /*<<< orphan*/  snmp_iplist; int /*<<< orphan*/  snmp_oidlist; int /*<<< orphan*/  snmp_octlist; int /*<<< orphan*/  snmp_intlist; } ;
struct TYPE_2__ {int syntax; } ;
struct snmp_object {TYPE_1__ val; } ;
typedef  int int32_t ;

/* Variables and functions */
#define  SNMP_SYNTAX_COUNTER 136 
#define  SNMP_SYNTAX_COUNTER64 135 
#define  SNMP_SYNTAX_GAUGE 134 
#define  SNMP_SYNTAX_INTEGER 133 
#define  SNMP_SYNTAX_IPADDRESS 132 
#define  SNMP_SYNTAX_NULL 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int FUNC0 (int /*<<< orphan*/ *,struct snmp_object*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int32_t
FUNC2(struct snmp_toolinfo *snmptoolctx, struct snmp_object *s,
    char *oid)
{
	if (snmptoolctx == NULL || s == NULL)
		return (-1);

	switch (s->val.syntax) {
		case SNMP_SYNTAX_INTEGER:
			return (FUNC0(&snmptoolctx->snmp_intlist,
			    s, oid));
		case SNMP_SYNTAX_OCTETSTRING:
			return (FUNC0(&snmptoolctx->snmp_octlist,
			    s, oid));
		case SNMP_SYNTAX_OID:
			return (FUNC0(&snmptoolctx->snmp_oidlist,
			    s, oid));
		case SNMP_SYNTAX_IPADDRESS:
			return (FUNC0(&snmptoolctx->snmp_iplist,
			    s, oid));
		case SNMP_SYNTAX_COUNTER:
			return (FUNC0(&snmptoolctx->snmp_cntlist,
			    s, oid));
		case SNMP_SYNTAX_GAUGE:
			return (FUNC0(&snmptoolctx->snmp_gaugelist,
			    s, oid));
		case SNMP_SYNTAX_TIMETICKS:
			return (FUNC0(&snmptoolctx->snmp_ticklist,
			    s, oid));
		case SNMP_SYNTAX_COUNTER64:
			return (FUNC0(&snmptoolctx->snmp_cnt64list,
			    s, oid));
		case SNMP_SYNTAX_NULL:
			return (FUNC0(&snmptoolctx->snmp_nodelist,
			    s, oid));
		default:
			FUNC1("Unknown syntax - %d", s->val.syntax);
			break;
	}

	return (-1);
}