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
struct todo_list {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct todo_list TODO_LIST_INIT ; 
 unsigned int TODO_LIST_SHORTEN_IDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct todo_list*,struct todo_list*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC6 (struct todo_list*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct todo_list*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int) ; 

__attribute__((used)) static int FUNC8(unsigned flags)
{
	const char *todo_file = FUNC3();
	struct todo_list todo_list = TODO_LIST_INIT,
		new_todo = TODO_LIST_INIT;
	int res = 0;

	if (FUNC4(&todo_list.buf, todo_file, 0) < 0)
		return FUNC2(FUNC0("could not read '%s'."), todo_file);

	FUNC5(&todo_list.buf, 1);
	res = FUNC1(the_repository, &todo_list, &new_todo, NULL, NULL, flags);
	if (!res && FUNC7(the_repository, &new_todo, todo_file,
					    NULL, NULL, -1, flags & ~(TODO_LIST_SHORTEN_IDS)))
		res = FUNC2(FUNC0("could not write '%s'"), todo_file);

	FUNC6(&todo_list);
	FUNC6(&new_todo);

	return res;
}