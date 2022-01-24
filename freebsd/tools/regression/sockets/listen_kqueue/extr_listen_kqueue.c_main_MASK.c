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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct kevent {uintptr_t ident; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int EV_ADD ; 
 int EV_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_NOSIGPIPE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC1 (uintptr_t,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int,struct kevent*,int,struct kevent*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC16()
{
	struct sockaddr_in addr;
	struct kevent ev[2];
	socklen_t socklen;
	int kq, sock, opt, pid, nev, fd;

	if ((kq = FUNC10()) == -1)
		FUNC5(1, "kqueue");

	if ((sock = FUNC15(PF_INET, SOCK_STREAM, 0)) == -1)
		FUNC5(1, "socket");

	FUNC0(&ev[0], sock, EVFILT_READ, EV_ADD | EV_CLEAR, 0, 0, NULL);
	FUNC0(&ev[1], sock, EVFILT_WRITE, EV_ADD | EV_CLEAR, 0, 0, NULL);

	opt = 1;
	if (FUNC14(sock, SOL_SOCKET, SO_NOSIGPIPE, &opt, sizeof(opt)) == -1)
		FUNC5(1, "setsockopt");

	if (FUNC9(kq, ev, 2, NULL, 0, NULL) == -1)
	    FUNC5(1, "kevent");

	if (FUNC14(sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)) == -1)
		FUNC5(1, "setsockopt");

	FUNC12(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = FUNC7(10000);

	if (FUNC2(sock, (struct sockaddr *)&addr, sizeof(addr)) == -1)
		FUNC5(1, "bind");
	if (FUNC11(sock, 0x80) == -1)
		FUNC5(1, "listen");

	if (FUNC8(sock, FIONBIO, &opt) == -1)
		FUNC5(1, "ioctl(FIONBIO)");

	if (FUNC9(kq, ev, 2, NULL, 0, NULL) == -1)
		FUNC5(1, "kevent");

	pid = FUNC6();
	if (pid == -1)
		FUNC5(1, "fork");
	if (pid == 0) {
		if (FUNC3(sock) == -1)
			FUNC5(1, "close");
		if ((sock = FUNC15(PF_INET, SOCK_STREAM, 0)) == -1)
			FUNC5(1, "socket");
		if (FUNC4(sock, (struct sockaddr *)&addr, sizeof(addr)) == -1)
			FUNC5(1, "connect");
	} else {
		nev = FUNC9(kq, NULL, 0, ev, 2, NULL);
		if (nev < 1)
			FUNC5(1, "kevent");
		for (int i = 0; i < nev; ++i) {
			if (ev[i].ident == (uintptr_t )sock) {
				fd = FUNC1(ev[i].ident,
				    (struct sockaddr *)&addr, &socklen);
				if (fd == -1)
					FUNC5(1, "accept");
				FUNC13("OK\n");
			}
		}
	}
}