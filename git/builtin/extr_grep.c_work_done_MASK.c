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
struct TYPE_2__ {size_t len; char* buf; } ;
struct work_item {int done; int /*<<< orphan*/  source; TYPE_1__ out; } ;

/* Variables and functions */
 size_t FUNC0 (struct work_item*) ; 
 scalar_t__ all_work_added ; 
 int /*<<< orphan*/  cond_result ; 
 int /*<<< orphan*/  cond_write ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ skip_first_line ; 
 struct work_item* todo ; 
 size_t todo_done ; 
 size_t todo_end ; 
 size_t todo_start ; 
 int /*<<< orphan*/  FUNC5 (int,char const*,size_t) ; 

__attribute__((used)) static void FUNC6(struct work_item *w)
{
	int old_done;

	FUNC1();
	w->done = 1;
	old_done = todo_done;
	for(; todo[todo_done].done && todo_done != todo_start;
	    todo_done = (todo_done+1) % FUNC0(todo)) {
		w = &todo[todo_done];
		if (w->out.len) {
			const char *p = w->out.buf;
			size_t len = w->out.len;

			/* Skip the leading hunk mark of the first file. */
			if (skip_first_line) {
				while (len) {
					len--;
					if (*p++ == '\n')
						break;
				}
				skip_first_line = 0;
			}

			FUNC5(1, p, len);
		}
		FUNC2(&w->source);
	}

	if (old_done != todo_done)
		FUNC4(&cond_write);

	if (all_work_added && todo_done == todo_end)
		FUNC4(&cond_result);

	FUNC3();
}