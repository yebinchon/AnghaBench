#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; int revents; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int O_NONBLOCK ; 
 int POLLOUT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  do_alrm ; 
 int FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int,char*,int) ; 

int
FUNC16(void)
{
	int o, s, t, u, do_t, do_u;
	struct pollfd pfd[2];
	struct sockaddr_in sa;
	char buf[4096];

	FUNC11("1..1\n");
	FUNC13(SIGALRM, do_alrm);
	FUNC1(20);

	s = FUNC14(AF_INET, SOCK_STREAM, 0);
	if (s == -1)
		return 1;
	o = 1;
	FUNC12(s, SOL_SOCKET, SO_REUSEADDR, &o, sizeof o);
	FUNC9(&sa, 0, sizeof sa);
	sa.sin_family = AF_INET;
	sa.sin_addr.s_addr = FUNC6(INADDR_LOOPBACK);
	sa.sin_port = FUNC7(3737);
	if (FUNC2(s, (struct sockaddr *) &sa, sizeof sa) == -1)
		return 1;
	if (FUNC8(s, 1) == -1)
		return 1;
	t = FUNC14(AF_INET, SOCK_STREAM, 0);
	if (t == -1)
		return 1;
	if (FUNC4(t, (struct sockaddr *) &sa, sizeof sa) == -1)
		return 1;
	u = FUNC0(s, 0, 0);
	if (u == -1)
		return 1;
	FUNC3(s);
	FUNC5(t, F_SETFL, FUNC5(t, F_GETFL) | O_NONBLOCK);
	FUNC5(u, F_SETFL, FUNC5(t, F_GETFL) | O_NONBLOCK);
	do_t = 1;
	do_u = 1;
	pfd[0].fd = t;
	pfd[0].events = POLLOUT;
	pfd[1].fd = u;
	pfd[1].events = POLLOUT;
	while (do_t || do_u) {
		if (FUNC10(pfd, 2, 1000) == 0) {
			if (do_t) {
				FUNC3(t);
				pfd[0].fd = -1;
				do_t = 0;
			}
			continue;
		}
		if (pfd[0].revents & POLLOUT) {
			if (FUNC15(t, buf, sizeof buf) == -1) {
				FUNC3(t);
				pfd[0].fd = -1;
				do_t = 0;
			}
		}
		if (pfd[1].revents & POLLOUT) {
			if (FUNC15(u, buf, sizeof buf) == -1) {
				FUNC3(u);
				pfd[1].fd = -1;
				do_u = 0;
			}
		}
	}

	FUNC11("ok 1 - tcpfullwindowrst\n");
	return 0;
}