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
struct snmp_toolinfo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  var; } ;
struct snmp_object {TYPE_1__ val; } ;
struct index {int syntax; int /*<<< orphan*/  tc; } ;
typedef  int int32_t ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 int MAX_CMD_SYNTAX_LEN ; 
 scalar_t__ OUTPUT_VERBOSE ; 
#define  SNMP_SYNTAX_COUNTER 135 
#define  SNMP_SYNTAX_COUNTER64 134 
#define  SNMP_SYNTAX_GAUGE 133 
#define  SNMP_SYNTAX_INTEGER 132 
#define  SNMP_SYNTAX_IPADDRESS 131 
 int SNMP_SYNTAX_NULL ; 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (struct snmp_toolinfo*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static char *
FUNC10(struct snmp_toolinfo *snmptoolctx, char *str,
    struct index *idx, struct snmp_object *object)
{
	char *ptr;
	int32_t i;
	enum snmp_syntax stx;
	char syntax[MAX_CMD_SYNTAX_LEN];

	ptr = str;
	if (FUNC0(snmptoolctx) == OUTPUT_VERBOSE) {
		for (i = 0; i < MAX_CMD_SYNTAX_LEN ; i++) {
			if (*(ptr + i) == ':')
				break;
		}

		if (i >= MAX_CMD_SYNTAX_LEN) {
			FUNC9("Unknown syntax in OID - %s", str);
			return (NULL);
		}
		/* Expect a syntax string here. */
		if ((stx = FUNC2(str)) <= SNMP_SYNTAX_NULL) {
			FUNC9("Invalid  syntax - %s",syntax);
			return (NULL);
		}

		if (stx != idx->syntax && !FUNC1(snmptoolctx)) {
			FUNC9("Syntax mismatch - %d expected, %d given",
			    idx->syntax, stx);
			return (NULL);
		}
		/*
		 * That is where the suboid started + the syntax length + one
		 * character for ':'.
		 */
		ptr = str + i + 1;
	} else
		stx = idx->syntax;

	switch (stx) {
		case SNMP_SYNTAX_INTEGER:
			return (FUNC4(ptr, &(object->val.var)));
		case SNMP_SYNTAX_OID:
			return (FUNC6(snmptoolctx, ptr,
			    &(object->val.var)));
		case SNMP_SYNTAX_IPADDRESS:
			return (FUNC5(ptr, &(object->val.var)));
		case SNMP_SYNTAX_COUNTER:
			/* FALLTHROUGH */
		case SNMP_SYNTAX_GAUGE:
			/* FALLTHROUGH */
		case SNMP_SYNTAX_TIMETICKS:
			return (FUNC8(ptr, &(object->val.var)));
		case SNMP_SYNTAX_COUNTER64:
			return (FUNC3(ptr, &(object->val.var)));
		case SNMP_SYNTAX_OCTETSTRING:
			return (FUNC7(idx->tc, ptr, &(object->val.var)));
		default:
			/* NOTREACHED */
			break;
	}

	return (NULL);
}