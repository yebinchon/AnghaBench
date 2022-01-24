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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TIMEOUT ; 
 int FUNC2 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int listenfd)
{
	fd_set rset;
	struct timeval tv;
	int fd, rv, val;

	FUNC6("accept");

	FUNC1(&rset);
	FUNC0(listenfd, &rset);
	tv.tv_sec = TIMEOUT;
	tv.tv_usec = 0;
	rv = FUNC5(listenfd + 1, &rset, (fd_set *)NULL, (fd_set *)NULL, &tv);
	if (rv < 0) {
		FUNC7("socket_accept: select");
		return (-1);
	}
	if (rv == 0) {
		FUNC8("socket_accept: select timeout");
		return (-1);
	}

	fd = FUNC2(listenfd, (struct sockaddr *)NULL, (socklen_t *)NULL);
	if (fd < 0) {
		FUNC7("socket_accept: accept");
		return (-1);
	}

	val = FUNC4(fd, F_GETFL, 0);
	if (val < 0) {
		FUNC7("socket_accept: fcntl(F_GETFL)");
		goto failed;
	}
	if (FUNC4(fd, F_SETFL, val & ~O_NONBLOCK) < 0) {
		FUNC7("socket_accept: fcntl(F_SETFL)");
		goto failed;
	}

	return (fd);

failed:
	if (FUNC3(fd) < 0)
		FUNC7("socket_accept: close");
	return (-1);
}