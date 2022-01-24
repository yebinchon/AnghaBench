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
struct sort_list_item {int dummy; } ;
struct sort_level {size_t tosort_num; size_t tosort_sz; struct sort_list_item** tosort; } ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;

/* Variables and functions */
 size_t MT_SORT_THRESHOLD ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_ADAPTIVE_NP ; 
 int /*<<< orphan*/  FUNC0 (struct sort_level*) ; 
 int /*<<< orphan*/  g_ls_cond ; 
 int /*<<< orphan*/  g_ls_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct sort_level*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtsem ; 
 int nthreads ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sort_level*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t sort_left ; 
 struct sort_level* FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(struct sort_list_item **base, size_t nmemb)
{
	struct sort_level *sl;

#if defined(SORT_THREADS)
	size_t nthreads_save = nthreads;
	if (nmemb < MT_SORT_THRESHOLD)
		nthreads = 1;

	if (nthreads > 1) {
		pthread_mutexattr_t mattr;

		pthread_mutexattr_init(&mattr);
		pthread_mutexattr_settype(&mattr, PTHREAD_MUTEX_ADAPTIVE_NP);

		pthread_mutex_init(&g_ls_mutex, &mattr);
		pthread_cond_init(&g_ls_cond, NULL);

		pthread_mutexattr_destroy(&mattr);

		sem_init(&mtsem, 0, 0);

	}
#endif

	sl = FUNC11(sizeof(struct sort_level));
	FUNC1(sl, 0, sizeof(struct sort_level));

	sl->tosort = base;
	sl->tosort_num = nmemb;
	sl->tosort_sz = nmemb;

#if defined(SORT_THREADS)
	sort_left = nmemb;
#endif

	FUNC8(sl);

	FUNC0(sl);

#if defined(SORT_THREADS)
	if (nthreads > 1) {
		sem_destroy(&mtsem);
		pthread_mutex_destroy(&g_ls_mutex);
	}
	nthreads = nthreads_save;
#endif
}