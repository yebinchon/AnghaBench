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

/* Variables and functions */
 struct todo_list TODO_LIST_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct todo_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct todo_list*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct todo_list*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int) ; 

__attribute__((used)) static int FUNC8(unsigned flags)
{
	const char *todo_file = FUNC3();
	struct todo_list todo_list = TODO_LIST_INIT;
	int res;

	if (FUNC4(&todo_list.buf, todo_file, 0) < 0)
		return FUNC2(FUNC0("could not read '%s'."), todo_file);

	if (FUNC5(the_repository, todo_list.buf.buf,
					&todo_list)) {
		FUNC6(&todo_list);
		return FUNC1(FUNC0("unusable todo list: '%s'"), todo_file);
	}

	res = FUNC7(the_repository, &todo_list, todo_file,
				      NULL, NULL, -1, flags);
	FUNC6(&todo_list);

	if (res)
		return FUNC2(FUNC0("could not write '%s'."), todo_file);
	return 0;
}