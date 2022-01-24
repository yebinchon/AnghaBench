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
 int /*<<< orphan*/  O_CREAT ; 
 int /*<<< orphan*/ * SEM_FAILED ; 
 int /*<<< orphan*/  SEM_NAME ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC14(void)
{
	sem_t *s, *s2;
	pid_t pid;
	int status;

	FUNC6("testing named process-shared semaphore\n");
	FUNC10(SEM_NAME);
	s = FUNC8(SEM_NAME, O_CREAT, 0777, 0);
	if (s == SEM_FAILED)
		FUNC2(1, "sem_open failed");
	s2 = FUNC8(SEM_NAME, O_CREAT, 0777, 0);
	if (s2 == SEM_FAILED)
		FUNC2(2, "second sem_open call failed");
	if (s != s2)
		FUNC3(3,
"two sem_open calls for same semaphore do not return same address");
	if (FUNC7(s2))
		FUNC2(4, "sem_close failed");
	if ((pid = FUNC5()) == 0) {
		FUNC6("child: sem_wait()\n");
		if (FUNC11(s))
			FUNC2(5, "sem_wait failed");
		FUNC6("child: sem_wait() returned\n");
		FUNC4(0);
	} else {
		FUNC12(1);
		FUNC6("parent: sem_post()\n");
		if (FUNC9(s))
			FUNC2(6, "sem_post failed");
		FUNC13(pid, &status, 0);
		if (FUNC1(status) && FUNC0(status) == 0)
			FUNC6("OK.\n");
		else
			FUNC6("Failure.");
	}

	if (FUNC7(s))
		FUNC2(7, "sem_close failed");
	
	return (0);
}