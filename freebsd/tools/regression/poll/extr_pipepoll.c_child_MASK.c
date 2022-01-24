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
struct pollfd {int fd; int events; int /*<<< orphan*/  revents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFONAME ; 
 scalar_t__ FT_FIFO ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int POLLHUP ; 
 int POLLIN ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ filetype ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppid ; 
 int FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int state ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(int fd, int num)
{
	struct pollfd pfd;
	int fd2, res;
	char buf[256];

	if (filetype == FT_FIFO) {
		fd = FUNC4(FIFONAME, O_RDONLY | O_NONBLOCK);
		if (fd < 0)
			FUNC1(1, "open for read");
	}
	pfd.fd = fd;
	pfd.events = POLLIN;

	if (filetype == FT_FIFO) {
		if ((res = FUNC5(&pfd, 1, 0)) < 0)
			FUNC1(1, "poll");
		FUNC7(num++, "0", 0, pfd.revents, res, 0);
	}
	FUNC3(ppid, SIGUSR1);

	FUNC8(1);
	while (state != 1)
		;
	if (filetype != FT_FIFO) {
		/*
		 * The connection cannot be reestablished.  Use the code that
		 * delays the read until after the writer disconnects since
		 * that case is more interesting.
		 */
		state = 4;
		goto state4;
	}
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "1", 0, pfd.revents, res, 0);
	FUNC3(ppid, SIGUSR1);

	FUNC8(1);
	while (state != 2)
		;
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "2", POLLIN, pfd.revents, res, 1);
	if (FUNC6(fd, buf, sizeof buf) != 1)
		FUNC1(1, "read");
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "2a", 0, pfd.revents, res, 0);
	FUNC3(ppid, SIGUSR1);

	FUNC8(1);
	while (state != 3)
		;
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "3", POLLHUP, pfd.revents, res, 1);
	FUNC3(ppid, SIGUSR1);

	/*
	 * Now we expect a new writer, and a new connection too since
	 * we read all the data.  The only new point is that we didn't
	 * start quite from scratch since the read fd is not new.  Check
	 * startup state as above, but don't do the read as above.
	 */
	FUNC8(1);
	while (state != 4)
		;
state4:
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "4", 0, pfd.revents, res, 0);
	FUNC3(ppid, SIGUSR1);

	FUNC8(1);
	while (state != 5)
		;
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "5", POLLIN, pfd.revents, res, 1);
	FUNC3(ppid, SIGUSR1);

	FUNC8(1);
	while (state != 6)
		;
	/*
	 * Now we have no writer, but should still have data from the old
	 * writer.  Check that we have both a data-readable condition and a
	 * hangup condition, and that the data can be read in the usual way.
	 * Since Linux does this, programs must not quit reading when they
	 * see POLLHUP; they must see POLLHUP without POLLIN (or another
	 * input condition) before they decide that there is EOF.  gdb-6.1.1
	 * is an example of a broken program that quits on POLLHUP only --
	 * see its event-loop.c.
	 */
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "6", POLLIN | POLLHUP, pfd.revents, res, 1);
	if (FUNC6(fd, buf, sizeof buf) != 1)
		FUNC1(1, "read");
	if ((res = FUNC5(&pfd, 1, 0)) < 0)
		FUNC1(1, "poll");
	FUNC7(num++, "6a", POLLHUP, pfd.revents, res, 1);
	if (filetype == FT_FIFO) {
		/*
		 * Check that POLLHUP is sticky for a new reader and for
		 * the old reader.
		 */
		fd2 = FUNC4(FIFONAME, O_RDONLY | O_NONBLOCK);
		if (fd2 < 0)
			FUNC1(1, "open for read");
		pfd.fd = fd2;
		if ((res = FUNC5(&pfd, 1, 0)) < 0)
			FUNC1(1, "poll");
		FUNC7(num++, "6b", POLLHUP, pfd.revents, res, 1);
		pfd.fd = fd;
		if ((res = FUNC5(&pfd, 1, 0)) < 0)
			FUNC1(1, "poll");
		FUNC7(num++, "6c", POLLHUP, pfd.revents, res, 1);
		FUNC0(fd2);
		if ((res = FUNC5(&pfd, 1, 0)) < 0)
			FUNC1(1, "poll");
		FUNC7(num++, "6d", POLLHUP, pfd.revents, res, 1);
	}
	FUNC0(fd);
	FUNC3(ppid, SIGUSR1);

	FUNC2(0);
}