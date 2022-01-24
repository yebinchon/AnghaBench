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
typedef  int int32_t ;
typedef  enum tok { ____Placeholder_tok } tok ;
struct TYPE_2__ {int /*<<< orphan*/  lno; } ;

/* Variables and functions */
 scalar_t__ ASN_MAXID ; 
 int TOK_NUM ; 
 scalar_t__ TOK_STR ; 
 scalar_t__ FUNC0 (struct snmp_toolinfo*) ; 
 TYPE_1__* input ; 
 scalar_t__ val ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC2(struct snmp_toolinfo *snmptoolctx)
{
	enum tok tok;

	if ((tok = FUNC0(snmptoolctx)) == '(')
		tok = FUNC0(snmptoolctx);

	if (tok != TOK_NUM  || val > ASN_MAXID ) {
		FUNC1("Suboid expected - line %d", input->lno);
		return (-1);
	}

	if (FUNC0(snmptoolctx) != TOK_STR) {
		FUNC1("Node name expected at line %d", input->lno);
		return (-1);
	}

	return (1);
}