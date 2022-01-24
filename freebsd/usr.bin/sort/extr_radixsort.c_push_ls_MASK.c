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
struct sort_level {int dummy; } ;
struct level_stack {struct sort_level* sl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct level_stack*) ; 
 int /*<<< orphan*/  g_ls_cond ; 
 int /*<<< orphan*/  g_ls_mutex ; 
 int nthreads ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct level_stack* FUNC4 (int) ; 

__attribute__((used)) static inline void
FUNC5(struct sort_level *sl)
{
	struct level_stack *new_ls;

	new_ls = FUNC4(sizeof(struct level_stack));
	new_ls->sl = sl;

#if defined(SORT_THREADS)
	if (nthreads > 1) {
		pthread_mutex_lock(&g_ls_mutex);
		_push_ls(new_ls);
		pthread_cond_signal(&g_ls_cond);
		pthread_mutex_unlock(&g_ls_mutex);
	} else
#endif
		FUNC0(new_ls);
}