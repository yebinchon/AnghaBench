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
struct snmp_value {int /*<<< orphan*/  var; } ;
typedef  int int32_t ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;

/* Variables and functions */
 int ASN_OIDSTRLEN ; 
 int MAX_CMD_SYNTAX_LEN ; 
 int MAX_OCTSTRING_LEN ; 
 int SNMP_SYNTAX_NULL ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct snmp_value*,int,char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC5(char *str, struct snmp_value *snmp_val)
{
	int32_t cnt;
	char *ptr;
	enum snmp_syntax syntax;
	char oid_str[ASN_OIDSTRLEN];

	ptr = str;
	for (cnt = 0; cnt < ASN_OIDSTRLEN; cnt++)
		if (ptr[cnt] == '=')
			break;

	if (cnt >= ASN_OIDSTRLEN) {
		FUNC4("OID too long - %s", str);
		return (-1);
	}
	FUNC3(oid_str, ptr, (size_t) (cnt + 1));

	ptr = str + cnt + 1;
	for (cnt = 0; cnt < MAX_CMD_SYNTAX_LEN; cnt++)
		if(ptr[cnt] == ':')
			break;

	if (cnt >= MAX_CMD_SYNTAX_LEN) {
		FUNC4("Unknown syntax in OID - %s", str);
		return (-1);
	}

	if ((syntax = FUNC0(ptr)) <= SNMP_SYNTAX_NULL) {
		FUNC4("Unknown syntax in OID - %s", ptr);
		return (-1);
	}

	ptr = ptr + cnt + 1;
	for (cnt = 0; cnt < MAX_OCTSTRING_LEN; cnt++)
		if (ptr[cnt] == '\0')
			break;

	if (ptr[cnt] != '\0') {
		FUNC4("Value string too long - %s", ptr);
		return (-1);
	}

	/*
	 * Here try parsing the OIDs and syntaxes and then check values - have
	 * to know syntax to check value boundaries.
	 */
	if (FUNC2(oid_str, &(snmp_val->var)) < 0) {
		FUNC4("Error parsing OID %s", oid_str);
		return (-1);
	}

	if (FUNC1(snmp_val, syntax, ptr) < 0)
		return (-1);

	return (1);
}