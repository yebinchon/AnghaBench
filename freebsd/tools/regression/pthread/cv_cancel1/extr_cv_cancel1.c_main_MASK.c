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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int NLOOPS ; 
 void* PTHREAD_CANCELED ; 
 int /*<<< orphan*/  cv ; 
 int /*<<< orphan*/  m ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int stop ; 
 int /*<<< orphan*/  thr_routine ; 
 int wake ; 

int FUNC9(int argc, char **argv)
{
	pthread_t td;
	int i;
	void *result;

	FUNC7(1);
	for (i = 0; i < NLOOPS; ++i) {
		stop = 0;
		wake = 0;

		FUNC3(&td, NULL, thr_routine, NULL);
		FUNC8(1);
		FUNC0("trying: %d\n", i);
		FUNC5(&m);
		wake = 1;
		FUNC2(&cv);
		FUNC1(td);
		FUNC6(&m);
		stop = 1;
		result = NULL;
		FUNC4(td, &result);
		if (result == PTHREAD_CANCELED) {
			FUNC0("the condition variable implementation does not\n"
			       "conform to SUSv3, a thread unblocked from\n"
			       "condition variable still can be canceled.\n");
			return (1);
		}
	}

	FUNC0("OK\n");
	return (0);
}