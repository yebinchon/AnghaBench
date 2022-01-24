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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDENT_NO_DATE ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct string_list*) ; 
 int /*<<< orphan*/  comment_line_char ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC6(struct strbuf *out,
			  struct string_list *them,
			  int kind)
{
	const char *label;
	const char *me;

	if (kind == 'a') {
		label = "By";
		me = FUNC1(IDENT_NO_DATE);
	} else {
		label = "Via";
		me = FUNC2(IDENT_NO_DATE);
	}

	if (!them->nr ||
	    (them->nr == 1 &&
	     me &&
	     FUNC3(me, them->items->string, &me) &&
	     FUNC4(me, " <")))
		return;
	FUNC5(out, "\n%c %s ", comment_line_char, label);
	FUNC0(out, them);
}