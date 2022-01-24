#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  octets; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  counter64; int /*<<< orphan*/  uint32; int /*<<< orphan*/  ipaddress; int /*<<< orphan*/  oid; TYPE_1__ octetstring; int /*<<< orphan*/  integer; } ;
struct snmp_value {int syntax; TYPE_2__ v; } ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int /*<<< orphan*/  tc; int /*<<< orphan*/ * snmp_enum; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 scalar_t__ OUTPUT_QUIET ; 
 int /*<<< orphan*/  SNMP_STRING ; 
#define  SNMP_SYNTAX_COUNTER 139 
#define  SNMP_SYNTAX_COUNTER64 138 
#define  SNMP_SYNTAX_ENDOFMIBVIEW 137 
#define  SNMP_SYNTAX_GAUGE 136 
#define  SNMP_SYNTAX_INTEGER 135 
#define  SNMP_SYNTAX_IPADDRESS 134 
#define  SNMP_SYNTAX_NOSUCHINSTANCE 133 
#define  SNMP_SYNTAX_NOSUCHOBJECT 132 
#define  SNMP_SYNTAX_NULL 131 
#define  SNMP_SYNTAX_OCTETSTRING 130 
#define  SNMP_SYNTAX_OID 129 
#define  SNMP_SYNTAX_TIMETICKS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_toolinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snmp_toolinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snmp_toolinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct snmp_toolinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int32_t
FUNC10(struct snmp_toolinfo *snmptoolctx, struct snmp_value *val,
    struct snmp_oid2str *entry)
{
	if (val == NULL)
		return (-1);

	if (FUNC0(snmptoolctx) != OUTPUT_QUIET)
		FUNC1(stdout, " = ");

	switch (val->syntax) {
	    case SNMP_SYNTAX_INTEGER:
		if (entry != NULL)
			FUNC5(snmptoolctx, entry->snmp_enum,
			    val->v.integer);
		else
			FUNC5(snmptoolctx, NULL, val->v.integer);
		break;

	    case SNMP_SYNTAX_OCTETSTRING:
		if (entry != NULL)
			FUNC7(snmptoolctx, entry->tc,
			    val->v.octetstring.len, val->v.octetstring.octets);
		else
			FUNC7(snmptoolctx, SNMP_STRING,
			    val->v.octetstring.len, val->v.octetstring.octets);
		break;

	    case SNMP_SYNTAX_OID:
		FUNC8(snmptoolctx, &(val->v.oid));
		break;

	    case SNMP_SYNTAX_IPADDRESS:
		FUNC6(snmptoolctx, val->v.ipaddress);
		break;

	    case SNMP_SYNTAX_COUNTER:
		FUNC2(snmptoolctx, val->v.uint32);
		break;

	    case SNMP_SYNTAX_GAUGE:
		FUNC4(snmptoolctx, val->v.uint32);
		break;

	    case SNMP_SYNTAX_TIMETICKS:
		FUNC9(snmptoolctx, val->v.uint32);
		break;

	    case SNMP_SYNTAX_COUNTER64:
		FUNC3(snmptoolctx, val->v.counter64);
		break;

	    case SNMP_SYNTAX_NOSUCHOBJECT:
		FUNC1(stdout, "No Such Object\n");
		return (val->syntax);

	    case SNMP_SYNTAX_NOSUCHINSTANCE:
		FUNC1(stdout, "No Such Instance\n");
		return (val->syntax);

	    case SNMP_SYNTAX_ENDOFMIBVIEW:
		FUNC1(stdout, "End of Mib View\n");
		return (val->syntax);

	    case SNMP_SYNTAX_NULL:
		/* NOTREACHED */
		FUNC1(stdout, "agent returned NULL Syntax\n");
		return (val->syntax);

	    default:
		/* NOTREACHED - If here - then all went completely wrong. */
		FUNC1(stdout, "agent returned unknown syntax\n");
		return (-1);
	}

	FUNC1(stdout, "\n");

	return (0);
}