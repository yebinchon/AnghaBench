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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HAVE_THREADS ; 
 int all_work_added ; 
 int /*<<< orphan*/  cond_add ; 
 int /*<<< orphan*/  cond_result ; 
 int /*<<< orphan*/  cond_write ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  grep_attr_mutex ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  grep_mutex ; 
 int /*<<< orphan*/  grep_read_mutex ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ grep_use_locks ; 
 int num_threads ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * threads ; 
 scalar_t__ todo_done ; 
 scalar_t__ todo_end ; 

__attribute__((used)) static int FUNC9(void)
{
	int hit = 0;
	int i;

	if (!HAVE_THREADS)
		FUNC0("Never call this function unless you have started threads");

	FUNC2();
	all_work_added = 1;

	/* Wait until all work is done. */
	while (todo_done != todo_end)
		FUNC6(&cond_result, &grep_mutex);

	/* Wake up all the consumer threads so they can see that there
	 * is no more work to do.
	 */
	FUNC4(&cond_add);
	FUNC3();

	for (i = 0; i < num_threads; i++) {
		void *h;
		FUNC7(threads[i], &h);
		hit |= (int) (intptr_t) h;
	}

	FUNC1(threads);

	FUNC8(&grep_mutex);
	FUNC8(&grep_read_mutex);
	FUNC8(&grep_attr_mutex);
	FUNC5(&cond_add);
	FUNC5(&cond_write);
	FUNC5(&cond_result);
	grep_use_locks = 0;

	return hit;
}