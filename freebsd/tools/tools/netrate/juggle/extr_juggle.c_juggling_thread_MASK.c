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
 int NUMCYCLES ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int threaded_child_ready ; 
 int /*<<< orphan*/  threaded_cond ; 
 int /*<<< orphan*/  threaded_mtx ; 
 int threaded_pipeline ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	int fd2, i, j;

	fd2 = *(int *)arg;

	if (FUNC4(&threaded_mtx) != 0)
		FUNC0(-1, "juggling_thread: pthread_mutex_lock");

	threaded_child_ready = 1;

	if (FUNC3(&threaded_cond) != 0)
		FUNC0(-1, "juggling_thread: pthread_cond_signal");

	if (FUNC5(&threaded_mtx) != 0)
		FUNC0(-1, "juggling_thread: pthread_mutex_unlock");

	for (i = 0; i < NUMCYCLES; i++) {
		for (j = 0; j < threaded_pipeline; j++) {
			if (FUNC1(fd2) < 0)
				FUNC0(-1, "message_recv fd2");

			if (FUNC2(fd2) < 0)
				FUNC0(-1, "message_send fd2");
		}
	}

	return (NULL);
}