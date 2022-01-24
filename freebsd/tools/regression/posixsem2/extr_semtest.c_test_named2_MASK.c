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

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/ * SEM_FAILED ; 
 int /*<<< orphan*/  SEM_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(void)
{
	sem_t *s, *s2, *s3;

	FUNC2("testing named process-shared semaphore, O_EXCL cases\n");
	FUNC5(SEM_NAME);
	s = FUNC4(SEM_NAME, O_CREAT | O_EXCL, 0777, 0);
	if (s == SEM_FAILED)
		FUNC0(1, "sem_open failed");
	s2 = FUNC4(SEM_NAME, O_CREAT | O_EXCL, 0777, 0);
	if (s2 != SEM_FAILED)
		FUNC1(2, "second sem_open call wrongly succeeded");
	if (errno != EEXIST)
		FUNC0(3, "second sem_open call failed with wrong errno");

	s3 = FUNC4(SEM_NAME, 0);
	if (s3 == SEM_FAILED)
		FUNC0(4, "third sem_open call failed");
	if (s != s3)
		FUNC1(5,
"two sem_open calls for same semaphore do not return same address");
	if (FUNC3(s3))
		FUNC0(6, "sem_close failed");

	if (FUNC3(s))
		FUNC0(7, "sem_close failed");
	
	FUNC2("OK.\n");
	return (0);
}