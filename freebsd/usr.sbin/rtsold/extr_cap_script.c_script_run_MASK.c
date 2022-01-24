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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int*) ; 

__attribute__((used)) static int
FUNC8(char **argv)
{
	pid_t pid;
	int fd[2], null;

	if (FUNC7(fd) != 0)
		return (-1);
	if ((pid = FUNC5()) < 0)
		return (-1);
	if (pid == 0) {
		(void)FUNC1(fd[1]);
		null = FUNC6("/dev/null", O_RDWR);
		if (null < 0)
			FUNC0(1);
		if (FUNC3(fd[0], STDIN_FILENO) != STDIN_FILENO)
			FUNC0(1);

		FUNC2(3);
		(void)FUNC4(argv[0], argv, NULL);
		FUNC0(1);
	} else
		(void)FUNC1(fd[0]);

	return (fd[1]);
}