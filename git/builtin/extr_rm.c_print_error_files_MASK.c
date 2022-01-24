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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ advice_rm_hints ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(struct string_list *files_list,
			      const char *main_msg,
			      const char *hints_msg,
			      int *errs)
{
	if (files_list->nr) {
		int i;
		struct strbuf err_msg = STRBUF_INIT;

		FUNC2(&err_msg, main_msg);
		for (i = 0; i < files_list->nr; i++)
			FUNC1(&err_msg,
				    "\n    %s",
				    files_list->items[i].string);
		if (advice_rm_hints)
			FUNC2(&err_msg, hints_msg);
		*errs = FUNC0("%s", err_msg.buf);
		FUNC3(&err_msg);
	}
}