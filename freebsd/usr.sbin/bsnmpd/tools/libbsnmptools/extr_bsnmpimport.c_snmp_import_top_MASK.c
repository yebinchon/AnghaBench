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
struct enum_type {int is_enum; int is_bits; int /*<<< orphan*/  snmp_enum; int /*<<< orphan*/  syntax; } ;
typedef  char int32_t ;
typedef  enum snmp_tc { ____Placeholder_snmp_tc } snmp_tc ;
struct TYPE_2__ {int /*<<< orphan*/  fname; } ;

/* Variables and functions */
 char TOK_BITS ; 
 char TOK_ENUM ; 
 char TOK_FILENAME ; 
 char TOK_INCLUDE ; 
 char TOK_STR ; 
 char TOK_TYPEDEF ; 
 int FUNC0 (struct snmp_toolinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char FUNC1 (struct snmp_toolinfo*) ; 
 TYPE_1__* input ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nexttok ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_toolinfo*,char*,int*,int /*<<< orphan*/ *) ; 
 struct enum_type* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snmp_toolinfo*,struct enum_type*) ; 
 char FUNC6 (struct snmp_toolinfo*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC8(struct snmp_toolinfo *snmptoolctx, int32_t *tok)
{
	enum snmp_tc tc;
	struct enum_type *t;

	if (*tok == '(')
		return (FUNC6(snmptoolctx, tok));

	if (*tok == TOK_TYPEDEF) {
		if ((*tok = FUNC1(snmptoolctx)) != TOK_STR) {
			FUNC7("type name expected after typedef - %s",
			    input->fname);
			return (-1);
		}

		t = FUNC4(nexttok);

		*tok = FUNC1(snmptoolctx);
		t->is_enum = (*tok == TOK_ENUM);
		t->is_bits = (*tok == TOK_BITS);
		t->syntax = FUNC3(snmptoolctx, tok, &tc, &(t->snmp_enum));
		FUNC5(snmptoolctx, t);

		return (1);
	}

	if (*tok == TOK_INCLUDE) {
		int i;

		*tok = FUNC1(snmptoolctx);
		if (*tok != TOK_FILENAME) {
			FUNC7("filename expected in include directive - %s",
			    nexttok);
			return (-1);
		}

		if (( i = FUNC0(snmptoolctx, nexttok, NULL, 1)) == 0) {
			*tok = FUNC1(snmptoolctx);
			return (1);
		}

		if (i == -1)
			return (-1);

		FUNC2(nexttok);
		*tok = FUNC1(snmptoolctx);
		return (1);
	}

	FUNC7("'(' or 'typedef' expected - %s", nexttok);
	return (-1);
}