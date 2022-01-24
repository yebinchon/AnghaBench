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
struct snmp_value {int dummy; } ;
typedef  int int32_t ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;

/* Variables and functions */
 int /*<<< orphan*/  SNMP_STRING ; 
#define  SNMP_SYNTAX_COUNTER 135 
#define  SNMP_SYNTAX_COUNTER64 134 
#define  SNMP_SYNTAX_GAUGE 133 
#define  SNMP_SYNTAX_INTEGER 132 
#define  SNMP_SYNTAX_IPADDRESS 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int FUNC0 (struct snmp_value*,char*) ; 
 int FUNC1 (struct snmp_value*,char*) ; 
 int FUNC2 (struct snmp_value*,char*) ; 
 int FUNC3 (struct snmp_value*,char*) ; 
 int FUNC4 (struct snmp_value*,char*) ; 
 int FUNC5 (struct snmp_value*,char*) ; 
 int FUNC6 (struct snmp_value*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct snmp_value*,char*) ; 

__attribute__((used)) static int32_t
FUNC8(struct snmp_value *value, enum snmp_syntax syntax, char *val)
{
	switch (syntax) {
		case SNMP_SYNTAX_INTEGER:
			return (FUNC2(value, val));
		case SNMP_SYNTAX_IPADDRESS:
			return (FUNC3(value, val));
		case SNMP_SYNTAX_COUNTER:
			return (FUNC0(value, val));
		case SNMP_SYNTAX_GAUGE:
			return (FUNC1(value, val));
		case SNMP_SYNTAX_TIMETICKS:
			return (FUNC5(value, val));
		case SNMP_SYNTAX_COUNTER64:
			return (FUNC6(value, val));
		case SNMP_SYNTAX_OCTETSTRING:
			return (FUNC7(SNMP_STRING, value, val));
		case SNMP_SYNTAX_OID:
			return (FUNC4(value, val));
		default:
			/* NOTREACHED */
			break;
	}

	return (-1);
}