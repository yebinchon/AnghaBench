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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FIFONAME ; 
 scalar_t__ FT_FIFO ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct timeval) ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ filetype ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ppid ; 
 int FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int state ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(int fd, int num)
{
	fd_set rfds;
	struct timeval tv;
	int fd1, fd2;
	char buf[256];

	if (filetype == FT_FIFO) {
		fd = FUNC7(FIFONAME, O_RDONLY | O_NONBLOCK);
		if (fd < 0)
			FUNC3(1, "open for read");
	}
	if (fd >= FD_SETSIZE)
		FUNC4(1, "fd = %d too large for select()", fd);

	if (filetype == FT_FIFO) {
		FUNC1(fd, rfds, tv);
		if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
			FUNC3(1, "select");
		/*
		 * This state (a reader for which there has never been a
		 * writer) is reported quite differently for select() than
		 * for poll().  select() must see a ready-to-read descriptor
		 * since read() will see EOF and not block; it cannot
		 * distinguish this state from the one of a reader for which
		 * there has been a writer but all writers have gone away
		 * and all data has been read.  poll() and distinguish these
		 * states by returning POLLHUP only for the latter; it does
		 * this, although this makes it inconsistent with the
		 * blockability of read() in the former.
		 */
		FUNC9(num++, "0", 1, FUNC0(fd, &rfds));
	}
	FUNC6(ppid, SIGUSR1);

	FUNC11(1);
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
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "1", 0, FUNC0(fd, &rfds));
	FUNC6(ppid, SIGUSR1);

	FUNC11(1);
	while (state != 2)
		;
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "2", 1, FUNC0(fd, &rfds));
	if (FUNC8(fd, buf, sizeof buf) != 1)
		FUNC3(1, "read");
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "2a", 0, FUNC0(fd, &rfds));
	FUNC6(ppid, SIGUSR1);

	FUNC11(1);
	while (state != 3)
		;
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "3", 1, FUNC0(fd, &rfds));
	FUNC6(ppid, SIGUSR1);

	/*
	 * Now we expect a new writer, and a new connection too since
	 * we read all the data.  The only new point is that we didn't
	 * start quite from scratch since the read fd is not new.  Check
	 * startup state as above, but don't do the read as above.
	 */
	FUNC11(1);
	while (state != 4)
		;
state4:
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "4", 0, FUNC0(fd, &rfds));
	FUNC6(ppid, SIGUSR1);

	FUNC11(1);
	while (state != 5)
		;
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "5", 1, FUNC0(fd, &rfds));
	FUNC6(ppid, SIGUSR1);

	FUNC11(1);
	while (state != 6)
		;
	/*
	 * Now we have no writer, but should still have data from the old
	 * writer.  Check that we have a data-readable condition, and that
	 * the data can be read in the usual way.
	 */
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "6", 1, FUNC0(fd, &rfds));
	if (FUNC8(fd, buf, sizeof buf) != 1)
		FUNC3(1, "read");
	FUNC1(fd, rfds, tv);
	if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
		FUNC3(1, "select");
	FUNC9(num++, "6a", 1, FUNC0(fd, &rfds));
	if (filetype == FT_FIFO) {
		/*
		 * Check that the readable-data condition is sticky for a
		 * new reader and for the old reader.  We really only have
		 * a hangup condition, but select() can only see this as
		 * a readable-data condition for null data.  select()
		 * cannot distinguish this state from the initial state
		 * where there is a reader but has never been a writer, so
		 * the following tests (to follow the pattern in pipepoll.c)
		 * essentially test state 0 again.
		 */
		fd2 = FUNC7(FIFONAME, O_RDONLY | O_NONBLOCK);
		if (fd2 < 0)
			FUNC3(1, "open for read");
		fd1 = fd;
		fd = fd2;
		FUNC1(fd, rfds, tv);
		if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
			FUNC3(1, "select");
		FUNC9(num++, "6b", 1, FUNC0(fd, &rfds));
		fd = fd1;
		FUNC1(fd, rfds, tv);
		if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
			FUNC3(1, "select");
		FUNC9(num++, "6c", 1, FUNC0(fd, &rfds));
		FUNC2(fd2);
		FUNC1(fd, rfds, tv);
		if (FUNC10(fd + 1, &rfds, NULL, NULL, &tv) < 0)
			FUNC3(1, "select");
		FUNC9(num++, "6d", 1, FUNC0(fd, &rfds));
	}
	FUNC2(fd);
	FUNC6(ppid, SIGUSR1);

	FUNC5(0);
}