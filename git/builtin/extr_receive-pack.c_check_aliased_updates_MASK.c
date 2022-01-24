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
struct string_list_item {void* util; } ;
struct string_list {int dummy; } ;
struct command {int /*<<< orphan*/  error_string; struct command* next; int /*<<< orphan*/  ref_name; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (struct command*,struct string_list*) ; 
 struct string_list_item* FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*) ; 

__attribute__((used)) static void FUNC4(struct command *commands)
{
	struct command *cmd;
	struct string_list ref_list = STRING_LIST_INIT_NODUP;

	for (cmd = commands; cmd; cmd = cmd->next) {
		struct string_list_item *item =
			FUNC1(&ref_list, cmd->ref_name);
		item->util = (void *)cmd;
	}
	FUNC3(&ref_list);

	for (cmd = commands; cmd; cmd = cmd->next) {
		if (!cmd->error_string)
			FUNC0(cmd, &ref_list);
	}

	FUNC2(&ref_list, 0);
}