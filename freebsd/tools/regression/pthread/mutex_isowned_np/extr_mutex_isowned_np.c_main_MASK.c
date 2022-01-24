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
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread ; 

int
FUNC8(int argc, char *argv[])
{
	pthread_t thr;
	pthread_mutex_t mtx;

	FUNC4(&mtx, NULL);
	if (FUNC5(&mtx) != 0) {
		FUNC1("pthread_mutex_isowned_np() returned non-zero\n"
		    "for a mutex that is not held\n");
		FUNC0(1);
	}
	FUNC6(&mtx);
	if (FUNC5(&mtx) == 0) {
		FUNC1("pthread_mutex_isowned_np() returned zero\n"
		    "for a mutex we hold ourselves\n");
		FUNC0(1);
	}
	FUNC2(&thr, NULL, thread, &mtx);
	FUNC3(thr, NULL);
	FUNC7(&mtx);
	if (FUNC5(&mtx) != 0) {
		FUNC1("pthread_mutex_isowned_np() returned non-zero\n"
		    "for a mutex that is not held\n");
		FUNC0(1);
	}

	FUNC1("OK\n");
	FUNC0(0);
}