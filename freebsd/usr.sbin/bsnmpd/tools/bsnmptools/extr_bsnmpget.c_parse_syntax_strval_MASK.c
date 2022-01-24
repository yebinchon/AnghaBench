#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct TYPE_10__ {int syntax; } ;
struct snmp_object {TYPE_2__ val; TYPE_1__* info; } ;
typedef  int int32_t ;
typedef  enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;
struct TYPE_9__ {int /*<<< orphan*/  tc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
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
 int FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (struct snmp_object*,char*) ; 
 int FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (struct snmp_toolinfo*,TYPE_2__*,char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (TYPE_2__*,char*) ; 
 int FUNC9 (TYPE_2__*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int32_t
FUNC12(struct snmp_toolinfo *snmptoolctx,
    struct snmp_object *object, char *str)
{
	uint32_t len;
	enum snmp_syntax syn;

	/*
	 * Syntax string here not required  - still may be present.
	 */

	if (FUNC0(snmptoolctx) == OUTPUT_VERBOSE) {
		for (len = 0 ; *(str + len) != ':'; len++) {
			if (*(str + len) == '\0') {
				FUNC11("Syntax missing in value - %s", str);
				return (-1);
			}
		}
		if ((syn = FUNC7(str)) <= SNMP_SYNTAX_NULL) {
			FUNC11("Unknown syntax in - %s", str);
			return (-1);
		}
		if (syn != object->val.syntax) {
			if (!FUNC1(snmptoolctx)) {
				FUNC11("Bad syntax in - %s", str);
				return (-1);
			} else
				object->val.syntax = syn;
		}
		len++;
	} else
		len = 0;

	switch (object->val.syntax) {
		case SNMP_SYNTAX_INTEGER:
			return (FUNC4(object, str + len));
		case SNMP_SYNTAX_IPADDRESS:
			return (FUNC5(&(object->val), str + len));
		case SNMP_SYNTAX_COUNTER:
			return (FUNC2(&(object->val), str + len));
		case SNMP_SYNTAX_GAUGE:
			return (FUNC3(&(object->val), str + len));
		case SNMP_SYNTAX_TIMETICKS:
			return (FUNC8(&(object->val), str + len));
		case SNMP_SYNTAX_COUNTER64:
			return (FUNC9(&(object->val), str + len));
		case SNMP_SYNTAX_OCTETSTRING:
			return (FUNC10(object->info->tc, &(object->val),
			    str + len));
		case SNMP_SYNTAX_OID:
			return (FUNC6(snmptoolctx, &(object->val),
			    str + len));
		default:
			/* NOTREACHED */
			break;
	}

	return (-1);
}