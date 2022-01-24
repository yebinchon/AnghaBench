#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct grep_source {int dummy; } ;
struct grep_opt {scalar_t__ binary; TYPE_1__* repo; } ;
struct TYPE_5__ {int /*<<< orphan*/  out; scalar_t__ done; struct grep_source source; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ GREP_BINARY_TEXT ; 
 int /*<<< orphan*/  cond_add ; 
 int /*<<< orphan*/  cond_write ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  grep_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct grep_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* todo ; 
 int todo_done ; 
 int todo_end ; 

__attribute__((used)) static void FUNC7(struct grep_opt *opt, const struct grep_source *gs)
{
	FUNC1();

	while ((todo_end+1) % FUNC0(todo) == todo_done) {
		FUNC5(&cond_write, &grep_mutex);
	}

	todo[todo_end].source = *gs;
	if (opt->binary != GREP_BINARY_TEXT)
		FUNC2(&todo[todo_end].source,
					opt->repo->index);
	todo[todo_end].done = 0;
	FUNC6(&todo[todo_end].out);
	todo_end = (todo_end + 1) % FUNC0(todo);

	FUNC4(&cond_add);
	FUNC3();
}