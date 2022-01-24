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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int NUMCYCLES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  juggling_thread ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  threaded_child_ready ; 
 int /*<<< orphan*/  threaded_cond ; 
 int /*<<< orphan*/  threaded_mtx ; 
 int threaded_pipeline ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static struct timespec
FUNC11(int fd1, int fd2, int pipeline)
{
	struct timespec tstart, tfinish;
	pthread_t thread;
	int i, j;

	threaded_pipeline = pipeline;

	if (FUNC7(&threaded_mtx, NULL) != 0)
		FUNC1(-1, "thread_juggle: pthread_mutex_init");

	if (FUNC5(&thread, NULL, juggling_thread, &fd2) != 0)
		FUNC1(-1, "thread_juggle: pthread_create");

	if (FUNC8(&threaded_mtx) != 0)
		FUNC1(-1, "thread_juggle: pthread_mutex_lock");

	while (!threaded_child_ready) {
		if (FUNC4(&threaded_cond, &threaded_mtx) != 0)
			FUNC1(-1, "thread_juggle: pthread_cond_wait");
	}

	if (FUNC9(&threaded_mtx) != 0)
		FUNC1(-1, "thread_juggle: pthread_mutex_unlock");

	if (FUNC0(CLOCK_REALTIME, &tstart) < 0)
		FUNC1(-1, "thread_juggle: clock_gettime");

	for (i = 0; i < NUMCYCLES; i++) {
		for (j = 0; j < pipeline; j++) {
			if (FUNC3(fd1) < 0)
				FUNC1(-1, "message_send fd1");
		}

		for (j = 0; j < pipeline; j++) {
			if (FUNC2(fd1) < 0)
				FUNC1(-1, "message_recv fd1");
		}
	}

	if (FUNC0(CLOCK_REALTIME, &tfinish) < 0)
		FUNC1(-1, "thread_juggle: clock_gettime");

	if (FUNC6(thread, NULL) != 0)
		FUNC1(-1, "thread_juggle: pthread_join");

	FUNC10(&tfinish, &tstart, &tfinish);

	return (tfinish);
}