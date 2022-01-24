#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ kind; char* str; } ;
typedef  TYPE_1__ token ;
typedef  scalar_t__ defkind ;
struct TYPE_9__ {scalar_t__ rel; char* type; char* name; char* array_max; int /*<<< orphan*/ * prefix; } ;
typedef  TYPE_2__ declaration ;

/* Variables and functions */
 char* ARGNAME ; 
 scalar_t__ DEF_PROGRAM ; 
 void* REL_ALIAS ; 
 scalar_t__ REL_ARRAY ; 
 scalar_t__ REL_POINTER ; 
 int /*<<< orphan*/  TOK_IDENT ; 
 int /*<<< orphan*/  TOK_LANGLE ; 
 int /*<<< orphan*/  TOK_RANGLE ; 
 scalar_t__ TOK_RPAREN ; 
 int /*<<< orphan*/  TOK_STAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(declaration *dec, defkind dkind, int num)
{
	token tok;
	char name[10];		/* argument name */

	if (dkind == DEF_PROGRAM) {
		FUNC2(&tok);
		if (tok.kind == TOK_RPAREN) { /* no arguments */
			dec->rel = REL_ALIAS;
			dec->type = "void";
			dec->prefix = NULL;
			dec->name = NULL;
			return;
		}
	}
	FUNC1(&dec->prefix, &dec->type, dkind);
	dec->rel = REL_ALIAS;
	if (FUNC3(TOK_IDENT, &tok)) /* optional name of argument */
		FUNC7(name, tok.str);
	else
		FUNC6(name, "%s%d", ARGNAME, num);
	/* default name of argument */

	dec->name = (char *) FUNC9(name);
	if (FUNC8(dec->type, "void")) {
		return;
	}

	if (FUNC8(dec->type, "opaque")) {
		FUNC0("opaque -- illegal argument type");
	}
	if (FUNC3(TOK_STAR, &tok)) {
		if (FUNC8(dec->type, "string")) {
			FUNC0("pointer to string not allowed in program arguments");
		}
		dec->rel = REL_POINTER;
		if (FUNC3(TOK_IDENT, &tok)) {
			/* optional name of argument */
			dec->name = FUNC9(tok.str);
		}
	}
	if (FUNC3(TOK_LANGLE, &tok)) {
		if (!FUNC8(dec->type, "string")) {
			FUNC0("arrays cannot be declared as arguments to procedures -- use typedef");
		}
		dec->rel = REL_ARRAY;
		if (FUNC3(TOK_RANGLE, &tok)) {
			dec->array_max = "~0";
			/* unspecified size, use max */
		} else {
			FUNC5(&tok);
			dec->array_max = tok.str;
			FUNC4(TOK_RANGLE, &tok);
		}
	}
	if (FUNC8(dec->type, "string")) {
		if (dec->rel != REL_ARRAY) {
			/*
			 * .x specifies just string as
			 * type of argument
			 * - make it string<>
			 */
			dec->rel = REL_ARRAY;
			dec->array_max = "~0"; /* unspecified size, use max */
		}
	}
}