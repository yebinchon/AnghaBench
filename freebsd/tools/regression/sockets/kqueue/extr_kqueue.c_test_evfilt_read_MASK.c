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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*,char*) ; 
 int FUNC4 (int,struct kevent*,int,struct kevent*,int,struct timespec*) ; 
 int FUNC5 (int,char*,int) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void
FUNC7(int kq, int fd[2], const char *socktype)
{
	struct timespec ts;
	struct kevent ke;
	ssize_t len;
	char ch;
	int i;

	FUNC0(&ke, fd[0], EVFILT_READ, EV_ADD, 0, 0, NULL);
	if (FUNC4(kq, &ke, 1, NULL, 0, NULL) == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_READ, EV_ADD");
	FUNC1("EVFILT_READ, EV_ADD");

	/*
	 * Confirm not readable to begin with, no I/O yet.
	 */
	ts.tv_sec = 0;
	ts.tv_nsec = 0;
	i = FUNC4(kq, NULL, 0, &ke, 1, &ts);
	if (i == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_READ");
	FUNC1("EVFILT_READ");
	if (i != 0)
		FUNC3("kevent", socktype, "EVFILT_READ",
		    "empty socket unreadable");
	FUNC1("empty socket unreadable");

	/*
	 * Write a byte to one end.
	 */
	ch = 'a';
	len = FUNC6(fd[1], &ch, sizeof(ch));
	if (len == -1)
		FUNC2(errno, "write", socktype, NULL);
	FUNC1("write one byte");
	if (len != sizeof(ch))
		FUNC3("write", socktype, NULL, "write length");
	FUNC1("write one byte length");

	/*
	 * Other end should now be readable.
	 */
	ts.tv_sec = 0;
	ts.tv_nsec = 0;
	i = FUNC4(kq, NULL, 0, &ke, 1, &ts);
	if (i == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_READ");
	FUNC1("EVFILT_READ");
	if (i != 1)
		FUNC3("kevent", socktype, "EVFILT_READ",
		    "non-empty socket unreadable");
	FUNC1("non-empty socket unreadable");

	/*
	 * Read a byte to clear the readable state.
	 */
	len = FUNC5(fd[0], &ch, sizeof(ch));
	if (len == -1)
		FUNC2(errno, "read", socktype, NULL);
	FUNC1("read one byte");
	if (len != sizeof(ch))
		FUNC3("read", socktype, NULL, "read length");
	FUNC1("read one byte length");

	/*
	 * Now re-check for readability.
	 */
	ts.tv_sec = 0;
	ts.tv_nsec = 0;
	i = FUNC4(kq, NULL, 0, &ke, 1, &ts);
	if (i == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_READ");
	FUNC1("EVFILT_READ");
	if (i != 0)
		FUNC3("kevent", socktype, "EVFILT_READ",
		    "empty socket unreadable");
	FUNC1("empty socket unreadable");

	FUNC0(&ke, fd[0], EVFILT_READ, EV_DELETE, 0, 0, NULL);
	if (FUNC4(kq, &ke, 1, NULL, 0, NULL) == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_READ, EV_DELETE");
	FUNC1("EVFILT_READ, EV_DELETE");
}