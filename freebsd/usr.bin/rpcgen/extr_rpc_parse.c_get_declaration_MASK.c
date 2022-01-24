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
typedef  int /*<<< orphan*/  defkind ;
struct TYPE_9__ {scalar_t__ rel; char* name; char* array_max; int /*<<< orphan*/  type; int /*<<< orphan*/  prefix; } ;
typedef  TYPE_2__ declaration ;

/* Variables and functions */
 scalar_t__ REL_ALIAS ; 
 scalar_t__ REL_ARRAY ; 
 scalar_t__ REL_POINTER ; 
 scalar_t__ REL_VECTOR ; 
 int /*<<< orphan*/  TOK_IDENT ; 
 int /*<<< orphan*/  TOK_LANGLE ; 
 int /*<<< orphan*/  TOK_LBRACKET ; 
 int /*<<< orphan*/  TOK_RANGLE ; 
 int /*<<< orphan*/  TOK_RBRACKET ; 
 scalar_t__ TOK_STAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(declaration *dec, defkind dkind)
{
	token tok;

	FUNC2(&dec->prefix, &dec->type, dkind);
	dec->rel = REL_ALIAS;
	if (FUNC7(dec->type, "void")) {
		return;
	}

	FUNC0(dec->type, 0);
	FUNC5(TOK_STAR, TOK_IDENT, &tok);
	if (tok.kind == TOK_STAR) {
		dec->rel = REL_POINTER;
		FUNC4(TOK_IDENT, &tok);
	}
	dec->name = tok.str;
	if (FUNC3(TOK_LBRACKET, &tok)) {
		if (dec->rel == REL_POINTER) {
			FUNC1("no array-of-pointer declarations -- use typedef");
		}
		dec->rel = REL_VECTOR;
		FUNC6(&tok);
		dec->array_max = tok.str;
		FUNC4(TOK_RBRACKET, &tok);
	} else if (FUNC3(TOK_LANGLE, &tok)) {
		if (dec->rel == REL_POINTER) {
			FUNC1("no array-of-pointer declarations -- use typedef");
		}
		dec->rel = REL_ARRAY;
		if (FUNC3(TOK_RANGLE, &tok)) {
			dec->array_max = "~0";	/* unspecified size, use max */
		} else {
			FUNC6(&tok);
			dec->array_max = tok.str;
			FUNC4(TOK_RANGLE, &tok);
		}
	}
	if (FUNC7(dec->type, "opaque")) {
		if (dec->rel != REL_ARRAY && dec->rel != REL_VECTOR) {
			FUNC1("array declaration expected");
		}
	} else if (FUNC7(dec->type, "string")) {
		if (dec->rel != REL_ARRAY) {
			FUNC1("variable-length array declaration expected");
		}
	}
}