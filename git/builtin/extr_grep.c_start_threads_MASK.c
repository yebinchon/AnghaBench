#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct grep_opt {scalar_t__ debug; int /*<<< orphan*/  output; } ;
struct TYPE_3__ {int /*<<< orphan*/  out; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_opt*) ; 
 int /*<<< orphan*/  cond_add ; 
 int /*<<< orphan*/  cond_result ; 
 int /*<<< orphan*/  cond_write ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grep_attr_mutex ; 
 int /*<<< orphan*/  grep_mutex ; 
 struct grep_opt* FUNC4 (struct grep_opt*) ; 
 int /*<<< orphan*/  grep_read_mutex ; 
 int grep_use_locks ; 
 int num_threads ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct grep_opt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  run ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strbuf_out ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/ * threads ; 
 TYPE_1__* todo ; 
 int /*<<< orphan*/ * FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct grep_opt *opt)
{
	int i;

	FUNC7(&grep_mutex, NULL);
	FUNC7(&grep_read_mutex, NULL);
	FUNC7(&grep_attr_mutex, NULL);
	FUNC5(&cond_add, NULL);
	FUNC5(&cond_write, NULL);
	FUNC5(&cond_result, NULL);
	grep_use_locks = 1;

	for (i = 0; i < FUNC0(todo); i++) {
		FUNC8(&todo[i].out, 0);
	}

	threads = FUNC10(num_threads, sizeof(*threads));
	for (i = 0; i < num_threads; i++) {
		int err;
		struct grep_opt *o = FUNC4(opt);
		o->output = strbuf_out;
		if (i)
			o->debug = 0;
		FUNC2(o);
		err = FUNC6(&threads[i], NULL, run, o);

		if (err)
			FUNC3(FUNC1("grep: failed to create thread: %s"),
			    FUNC9(err));
	}
}