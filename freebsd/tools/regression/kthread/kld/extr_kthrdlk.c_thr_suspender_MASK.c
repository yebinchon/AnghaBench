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
struct thread {int dummy; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int QUIT ; 
 int /*<<< orphan*/  global_condvar ; 
 int hz ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  test_global_lock ; 
 int /*<<< orphan*/  test_thrcnt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void 
FUNC6(void *arg)
{
	struct thread *td = (struct thread *) arg;
	int error;

	for (;;) {
		if (QUIT == 1)
			break;
		error = FUNC1(td, 10*hz);
		if (error != 0 && QUIT == 0) {
			if (error == EWOULDBLOCK)
				FUNC4("Ooops: kthread deadlock\n");
			else 
				FUNC4("kthread_suspend error: %d\n", error);
			break;
		}
	}

	FUNC2(&test_global_lock);
	test_thrcnt--;
	FUNC5(&global_condvar);
	FUNC3(&test_global_lock);

	FUNC0();
}