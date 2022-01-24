#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct conv_attrs {void* crlf_action; void* attr_action; int /*<<< orphan*/  working_tree_encoding; int /*<<< orphan*/  drv; int /*<<< orphan*/  ident; } ;
struct attr_check_item {int dummy; } ;
typedef  enum eol { ____Placeholder_eol } eol ;
struct TYPE_4__ {struct attr_check_item* items; } ;

/* Variables and functions */
 scalar_t__ AUTO_CRLF_FALSE ; 
 scalar_t__ AUTO_CRLF_INPUT ; 
 scalar_t__ AUTO_CRLF_TRUE ; 
 void* CRLF_AUTO ; 
 void* CRLF_AUTO_CRLF ; 
 void* CRLF_AUTO_INPUT ; 
 void* CRLF_BINARY ; 
 void* CRLF_TEXT ; 
 void* CRLF_TEXT_CRLF ; 
 void* CRLF_TEXT_INPUT ; 
 void* CRLF_UNDEFINED ; 
 int EOL_CRLF ; 
 int EOL_LF ; 
 TYPE_1__* FUNC0 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ auto_crlf ; 
 TYPE_1__* check ; 
 int /*<<< orphan*/  FUNC1 (struct index_state const*,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct attr_check_item*) ; 
 void* FUNC4 (struct attr_check_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct attr_check_item*) ; 
 int FUNC6 (struct attr_check_item*) ; 
 int /*<<< orphan*/  FUNC7 (struct attr_check_item*) ; 
 int /*<<< orphan*/  read_convert_config ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  user_convert ; 
 int /*<<< orphan*/ * user_convert_tail ; 

__attribute__((used)) static void FUNC9(const struct index_state *istate,
			  struct conv_attrs *ca, const char *path)
{
	struct attr_check_item *ccheck = NULL;

	if (!check) {
		check = FUNC0("crlf", "ident", "filter",
					 "eol", "text", "working-tree-encoding",
					 NULL);
		user_convert_tail = &user_convert;
		FUNC2(read_convert_config, NULL);
	}

	FUNC1(istate, path, check);
	ccheck = check->items;
	ca->crlf_action = FUNC4(ccheck + 4);
	if (ca->crlf_action == CRLF_UNDEFINED)
		ca->crlf_action = FUNC4(ccheck + 0);
	ca->ident = FUNC7(ccheck + 1);
	ca->drv = FUNC3(ccheck + 2);
	if (ca->crlf_action != CRLF_BINARY) {
		enum eol eol_attr = FUNC6(ccheck + 3);
		if (ca->crlf_action == CRLF_AUTO && eol_attr == EOL_LF)
			ca->crlf_action = CRLF_AUTO_INPUT;
		else if (ca->crlf_action == CRLF_AUTO && eol_attr == EOL_CRLF)
			ca->crlf_action = CRLF_AUTO_CRLF;
		else if (eol_attr == EOL_LF)
			ca->crlf_action = CRLF_TEXT_INPUT;
		else if (eol_attr == EOL_CRLF)
			ca->crlf_action = CRLF_TEXT_CRLF;
	}
	ca->working_tree_encoding = FUNC5(ccheck + 5);

	/* Save attr and make a decision for action */
	ca->attr_action = ca->crlf_action;
	if (ca->crlf_action == CRLF_TEXT)
		ca->crlf_action = FUNC8() ? CRLF_TEXT_CRLF : CRLF_TEXT_INPUT;
	if (ca->crlf_action == CRLF_UNDEFINED && auto_crlf == AUTO_CRLF_FALSE)
		ca->crlf_action = CRLF_BINARY;
	if (ca->crlf_action == CRLF_UNDEFINED && auto_crlf == AUTO_CRLF_TRUE)
		ca->crlf_action = CRLF_AUTO_CRLF;
	if (ca->crlf_action == CRLF_UNDEFINED && auto_crlf == AUTO_CRLF_INPUT)
		ca->crlf_action = CRLF_AUTO_INPUT;
}