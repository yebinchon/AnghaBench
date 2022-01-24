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
struct work_item {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct work_item*) ; 
 scalar_t__ all_work_added ; 
 int /*<<< orphan*/  cond_add ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  grep_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct work_item* todo ; 
 size_t todo_end ; 
 size_t todo_start ; 

__attribute__((used)) static struct work_item *FUNC4(void)
{
	struct work_item *ret;

	FUNC1();
	while (todo_start == todo_end && !all_work_added) {
		FUNC3(&cond_add, &grep_mutex);
	}

	if (todo_start == todo_end && all_work_added) {
		ret = NULL;
	} else {
		ret = &todo[todo_start];
		todo_start = (todo_start + 1) % FUNC0(todo);
	}
	FUNC2();
	return ret;
}