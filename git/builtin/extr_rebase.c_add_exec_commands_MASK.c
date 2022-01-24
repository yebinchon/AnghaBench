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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct todo_list {TYPE_1__ buf; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 struct todo_list TODO_LIST_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC5 (struct todo_list*,struct string_list*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct todo_list*) ; 
 int /*<<< orphan*/  FUNC7 (struct todo_list*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct todo_list*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct string_list *commands)
{
	const char *todo_file = FUNC3();
	struct todo_list todo_list = TODO_LIST_INIT;
	int res;

	if (FUNC4(&todo_list.buf, todo_file, 0) < 0)
		return FUNC2(FUNC0("could not read '%s'."), todo_file);

	if (FUNC6(the_repository, todo_list.buf.buf,
					&todo_list)) {
		FUNC7(&todo_list);
		return FUNC1(FUNC0("unusable todo list: '%s'"), todo_file);
	}

	FUNC5(&todo_list, commands);
	res = FUNC8(the_repository, &todo_list,
				      todo_file, NULL, NULL, -1, 0);
	FUNC7(&todo_list);

	if (res)
		return FUNC2(FUNC0("could not write '%s'."), todo_file);
	return 0;
}