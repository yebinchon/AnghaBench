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
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(const char *test, int *fdp)
{
	char path[] = "0send_fifo.XXXXXXX";
	int fd1, fd2;

	if (FUNC2(path) == -1)
		FUNC0(1, "%s: setup_fifo: mktemp", test);
	FUNC4(path);

	if (FUNC1(path, 0600) < 0)
		FUNC0(1, "%s: setup_fifo: mkfifo(%s)", test, path);

	fd1 = FUNC3(path, O_RDONLY | O_NONBLOCK);
	if (fd1 < 0)
		FUNC0(1, "%s: setup_fifo: open(%s, O_RDONLY)", test, path);

	fd2 = FUNC3(path, O_WRONLY | O_NONBLOCK);
	if (fd2 < 0)
		FUNC0(1, "%s: setup_fifo: open(%s, O_WRONLY)", test, path);

	fdp[0] = fd2;
	fdp[1] = fd1;
}