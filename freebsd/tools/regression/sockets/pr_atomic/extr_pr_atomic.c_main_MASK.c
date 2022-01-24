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
typedef  int /*<<< orphan*/  un ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  handle_sigalrm ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  myjmpbuf ; 
 int FUNC9 (int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_path ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int
FUNC17(void)
{
	struct sockaddr_un un;
	pid_t pid;
	int s;

	if (FUNC8(socket_path) == -1)
		FUNC4(1, "mkstemp");
	s = FUNC14(PF_LOCAL, SOCK_DGRAM, 0);
	if (s == -1)
		FUNC5(-1, "socket");
	FUNC7(&un, 0, sizeof(un));
	un.sun_family = AF_LOCAL;
	FUNC16(socket_path);
	FUNC15(un.sun_path, socket_path);
	if (FUNC2(s, (struct sockaddr *)&un, sizeof(un)) == -1)
		FUNC5(-1, "bind");
	pid = FUNC6();
	if (pid == -1)
		FUNC5(-1, "fork");
	if (pid == 0) {
		int conn;
		char buf[] = "AAAAAAAAA";

		FUNC3(s);
		conn = FUNC14(AF_LOCAL, SOCK_DGRAM, 0);
		if (conn == -1)
			FUNC5(-1,"socket");
		if (FUNC10(conn, buf, sizeof(buf), 0, (struct sockaddr *)&un,
		    sizeof(un)) != sizeof(buf))
			FUNC5(-1,"sendto");
		FUNC3(conn);
		FUNC0(0);
	}

	FUNC13(5);

	/* Make sure the data is there when we try to receive it. */
	if (FUNC9(s, (void *)-1, 1, 0, NULL, NULL) != -1)
		FUNC5(-1,"recvfrom succeeded when failure expected");

	(void)FUNC12(SIGALRM, handle_sigalrm);
	if (FUNC11(myjmpbuf) == 0) {
		/*
	 	 * This recvfrom will panic an unpatched system, and block
		 * a patched one.
		 */
		FUNC1(5);
		(void)FUNC9(s, (void *)-1, 1, 0, NULL, NULL);
	}

	/* We should reach here via longjmp() and all should be well. */

	return (0);
}