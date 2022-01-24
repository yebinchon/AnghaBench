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
struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int syntax; } ;
typedef  int int32_t ;

/* Variables and functions */
#define  SNMP_SYNTAX_COUNTER 135 
#define  SNMP_SYNTAX_COUNTER64 134 
#define  SNMP_SYNTAX_GAUGE 133 
#define  SNMP_SYNTAX_INTEGER 132 
#define  SNMP_SYNTAX_IPADDRESS 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int FUNC0 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC1 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC2 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC3 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC4 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC5 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC6 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 int FUNC7 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 

int32_t
FUNC8(struct snmp_toolinfo *snmptoolctx, struct snmp_oid2str *entry)
{
	switch (entry->syntax) {
		case SNMP_SYNTAX_INTEGER:
			return (FUNC3(snmptoolctx, entry));
		case SNMP_SYNTAX_OCTETSTRING:
			return (FUNC5(snmptoolctx, entry));
		case SNMP_SYNTAX_OID:
			return (FUNC6(snmptoolctx, entry));
		case SNMP_SYNTAX_IPADDRESS:
			return (FUNC4(snmptoolctx, entry));
		case SNMP_SYNTAX_COUNTER:
			return (FUNC1(snmptoolctx, entry));
		case SNMP_SYNTAX_GAUGE:
			return (FUNC2(snmptoolctx, entry));
		case SNMP_SYNTAX_TIMETICKS:
			return (FUNC7(snmptoolctx, entry));
		case SNMP_SYNTAX_COUNTER64:
			return (FUNC0(snmptoolctx, entry));
		default:
			break;
	}

	return (-1);
}