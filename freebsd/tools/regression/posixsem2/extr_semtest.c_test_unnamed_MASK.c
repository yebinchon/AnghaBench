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
typedef  int /*<<< orphan*/  sem_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int MAP_ANON ; 
 int /*<<< orphan*/ * MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC12(void)
{
	sem_t *s;
	pid_t pid;
	int status;

	FUNC6("testing unnamed process-shared semaphore\n");
	s = (sem_t *)FUNC5(NULL, sizeof(sem_t), PROT_READ|PROT_WRITE, MAP_ANON|MAP_SHARED,
		-1, 0);
	if (s == MAP_FAILED)
		FUNC2(1, "mmap failed");
	if (FUNC7(s, 1, 0))
		FUNC2(2, "sem_init failed");
	if ((pid = FUNC4()) == 0) {
		FUNC6("child: sem_wait()\n");
		if (FUNC9(s))
			FUNC2(3, "sem_wait failed");
		FUNC6("child: sem_wait() returned\n");
		FUNC3(0);
	} else {
		FUNC10(1);
		FUNC6("parent: sem_post()\n");
		if (FUNC8(s))
			FUNC2(4, "sem_post failed");
		FUNC11(pid, &status, 0);
		if (FUNC1(status) && FUNC0(status) == 0)
			FUNC6("OK.\n");
		else
			FUNC6("Failure.");
	}
	return (0);
}