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
typedef  enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;

/* Variables and functions */
 int TOK_STR ; 
 int FUNC0 (struct snmp_toolinfo*) ; 
 int /*<<< orphan*/  nexttok ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int32_t
FUNC3(struct snmp_toolinfo *snmptoolctx, int32_t *tok,
    enum snmp_tc *tc)
{
	if ((*tok = FUNC0(snmptoolctx)) != TOK_STR) {
		FUNC2("subtype expected after '|'");
		return (-1);
	}

	*tc = FUNC1(nexttok);
	*tok = FUNC0(snmptoolctx);

	return (1);
}