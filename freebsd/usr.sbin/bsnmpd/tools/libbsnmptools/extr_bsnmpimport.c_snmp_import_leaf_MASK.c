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
typedef  int /*<<< orphan*/  uint32_t ;
struct snmp_toolinfo {int dummy; } ;
struct snmp_oid2str {int syntax; struct snmp_oid2str* string; int /*<<< orphan*/  table_idx; int /*<<< orphan*/  access; int /*<<< orphan*/  snmp_enum; int /*<<< orphan*/  tc; } ;
typedef  int int32_t ;
struct TYPE_2__ {struct snmp_oid2str* lno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_DATA ; 
 int /*<<< orphan*/  ENTRY_NONE ; 
 int SNMP_ACCESS_GETSET ; 
 int TOK_ACCESS ; 
 int TOK_STR ; 
 int /*<<< orphan*/  FUNC0 (struct snmp_oid2str*) ; 
 int FUNC1 (struct snmp_toolinfo*) ; 
 TYPE_1__* input ; 
 int FUNC2 (struct snmp_toolinfo*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snmp_toolinfo*,struct snmp_oid2str*) ; 
 scalar_t__ val ; 
 int /*<<< orphan*/  FUNC5 (char*,struct snmp_oid2str*) ; 

__attribute__((used)) static int32_t
FUNC6(struct snmp_toolinfo *snmptoolctx, int32_t *tok,
    struct snmp_oid2str *oid2str)
{
	int32_t i, syntax;

	if ((syntax = FUNC2(snmptoolctx, tok, &(oid2str->tc), &(oid2str->snmp_enum)))
	    < 0)
		return(-1);

	oid2str->syntax = syntax;
	/*
	 * That is the name of the function, corresponding to the entry.
	 * It is used by bsnmpd, but is not interesting for us.
	 */
	if (*tok == TOK_STR)
		*tok = FUNC1(snmptoolctx);

	for (i = 0; i < SNMP_ACCESS_GETSET && *tok == TOK_ACCESS; i++) {
		oid2str->access |=  (uint32_t) val;
		*tok = FUNC1(snmptoolctx);
	}

	if (*tok != ')') {
		FUNC5("')' expected at end of line %d", input->lno);
		return (-1);
	}

	oid2str->table_idx = FUNC3(ENTRY_DATA,  NULL);

	if ((i = FUNC4(snmptoolctx, oid2str)) < 0) {
		FUNC5("Error adding leaf %s to list", oid2str->string);
		return (-1);
	}

	/*
	 * Same entry is already present in the mapping lists and
	 * the new one was not inserted.
	 */
	if (i == 0)  {
		FUNC0(oid2str->string);
		FUNC0(oid2str);
	}

	(void) FUNC3(ENTRY_NONE, NULL);

	return (1);
}