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
struct string_list_item {int /*<<< orphan*/  string; scalar_t__ util; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct string_list *list)
{
	int i;
	for (i = 0; i < list->nr; i++) {
		struct stat st;
		struct string_list_item *p = &(list->items[i]);

		/* p->util is skip-worktree */
		if (p->util)
			continue;

		if (!FUNC3(p->string, &st)) {
			if (FUNC1(p->string, &st, 0))
				FUNC2(FUNC0("updating files failed"));
		} else
			FUNC4(p->string);
	}
}