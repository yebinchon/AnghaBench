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
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_NONE ; 
 int TOK_EOF ; 
#define  TOK_ERR 128 
 int /*<<< orphan*/  current_oid ; 
 int FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC4(struct snmp_toolinfo *snmptoolctx, int32_t *tok)
{
	while (*tok != TOK_EOF) {
		switch (*tok) {
		    case TOK_ERR:
			return (-1);
		    case '(':
			if (FUNC1(snmptoolctx) < 0)
			    return (-1);
			break;
		    case ')':
			if (FUNC3(&current_oid) < 0)
			    return (-1);
			(void) FUNC2(ENTRY_NONE, NULL);
			break;
		    default:
			/* Anything else here would be illegal. */
			return (-1);
		}
		*tok = FUNC0(snmptoolctx);
	}

	return (0);
}