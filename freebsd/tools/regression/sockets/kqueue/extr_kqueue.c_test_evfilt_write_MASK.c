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
 scalar_t__ EAGAIN ; 
 scalar_t__ ENOBUFS ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int /*<<< orphan*/  EV_ADD ; 
 int /*<<< orphan*/  EV_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*,char*) ; 
 int FUNC4 (int,struct kevent*,int,struct kevent*,int,struct timespec*) ; 
 int FUNC5 (int,char*,int) ; 

__attribute__((used)) static void
FUNC6(int kq, int fd[2], const char *socktype)
{
	struct timespec ts;
	struct kevent ke;
	ssize_t len;
	char ch;
	int i;

	FUNC0(&ke, fd[0], EVFILT_WRITE, EV_ADD, 0, 0, NULL);
	if (FUNC4(kq, &ke, 1, NULL, 0, NULL) == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_WRITE, EV_ADD");
	FUNC1("EVFILE_WRITE, EV_ADD");

	/*
	 * Confirm writable to begin with, no I/O yet.
	 */
	ts.tv_sec = 0;
	ts.tv_nsec = 0;
	i = FUNC4(kq, NULL, 0, &ke, 1, &ts);
	if (i == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_WRITE");
	FUNC1("EVFILE_WRITE");
	if (i != 1)
		FUNC3("kevent", socktype, "EVFILT_WRITE",
		    "empty socket unwritable");
	FUNC1("empty socket unwritable");

	/*
	 * Write bytes into the socket until we can't write anymore.
	 */
	ch = 'a';
	while ((len = FUNC5(fd[0], &ch, sizeof(ch))) == sizeof(ch)) {};
	if (len == -1 && errno != EAGAIN && errno != ENOBUFS)
		FUNC2(errno, "write", socktype, NULL);
	FUNC1("write");
	if (len != -1 && len != sizeof(ch))
		FUNC3("write", socktype, NULL, "write length");
	FUNC1("write length");

	/*
	 * Check to make sure the socket is no longer writable.
	 */
	ts.tv_sec = 0;
	ts.tv_nsec = 0;
	i = FUNC4(kq, NULL, 0, &ke, 1, &ts);
	if (i == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_WRITE");
	FUNC1("EVFILT_WRITE");
	if (i != 0)
		FUNC3("kevent", socktype, "EVFILT_WRITE",
		    "full socket writable");
	FUNC1("full socket writable");

	FUNC0(&ke, fd[0], EVFILT_WRITE, EV_DELETE, 0, 0, NULL);
	if (FUNC4(kq, &ke, 1, NULL, 0, NULL) == -1)
		FUNC2(errno, "kevent", socktype, "EVFILT_WRITE, EV_DELETE");
	FUNC1("EVFILT_WRITE, EV_DELETE");
}