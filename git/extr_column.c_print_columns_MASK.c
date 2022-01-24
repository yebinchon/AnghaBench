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
struct string_list {int /*<<< orphan*/  nr; } ;
struct column_options {char* indent; char* nl; int padding; int width; } ;
typedef  int /*<<< orphan*/  nopts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 unsigned int COL_AUTO ; 
#define  COL_COLUMN 130 
 unsigned int COL_ENABLE_MASK ; 
 int FUNC1 (unsigned int) ; 
#define  COL_PLAIN 129 
#define  COL_ROW 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list const*,unsigned int,struct column_options*) ; 
 int /*<<< orphan*/  FUNC6 (struct column_options*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 () ; 

void FUNC8(const struct string_list *list, unsigned int colopts,
		   const struct column_options *opts)
{
	struct column_options nopts;

	if (!list->nr)
		return;
	FUNC2((colopts & COL_ENABLE_MASK) != COL_AUTO);

	FUNC6(&nopts, 0, sizeof(nopts));
	nopts.indent = opts && opts->indent ? opts->indent : "";
	nopts.nl = opts && opts->nl ? opts->nl : "\n";
	nopts.padding = opts ? opts->padding : 1;
	nopts.width = opts && opts->width ? opts->width : FUNC7() - 1;
	if (!FUNC3(colopts)) {
		FUNC4(list, "", "\n");
		return;
	}
	switch (FUNC1(colopts)) {
	case COL_PLAIN:
		FUNC4(list, nopts.indent, nopts.nl);
		break;
	case COL_ROW:
	case COL_COLUMN:
		FUNC5(list, colopts, &nopts);
		break;
	default:
		FUNC0("invalid layout mode %d", FUNC1(colopts));
	}
}