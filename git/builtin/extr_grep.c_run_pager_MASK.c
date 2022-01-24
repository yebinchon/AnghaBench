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
struct grep_opt {struct string_list* output_priv; } ;
struct child_process {char const* dir; int use_shell; int /*<<< orphan*/  args; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct child_process*) ; 

__attribute__((used)) static void FUNC3(struct grep_opt *opt, const char *prefix)
{
	struct string_list *path_list = opt->output_priv;
	struct child_process child = CHILD_PROCESS_INIT;
	int i, status;

	for (i = 0; i < path_list->nr; i++)
		FUNC0(&child.args, path_list->items[i].string);
	child.dir = prefix;
	child.use_shell = 1;

	status = FUNC2(&child);
	if (status)
		FUNC1(status);
}