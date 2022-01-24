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
typedef  int u_int ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; void* sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  servaddr ;
typedef  int /*<<< orphan*/  ncpus ;

/* Variables and functions */
 void* AF_LOCAL ; 
 int LOOPS ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  USLEEP ; 
 int FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_path ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int
FUNC20(void)
{
	struct sockaddr_un servaddr;
	int listenfd, connfd, pid;
	u_int counter, ncpus;
	size_t len;

	len = sizeof(ncpus);
	if (FUNC16("kern.smp.cpus", &ncpus, &len, NULL, 0) < 0)
		FUNC5(1, "kern.smp.cpus");
	if (len != sizeof(ncpus))
		FUNC6(1, "kern.smp.cpus: invalid length");
	if (ncpus < 2)
		FUNC19("SMP not present, test may be unable to trigger race");

	if (FUNC11(socket_path) == -1)
		FUNC5(1, "mkstemp failed");
	FUNC17(socket_path);

	/*
	 * Create a UNIX domain socket that the child will repeatedly
	 * accept() from, and that the parent will repeatedly connect() to.
	 */
	if ((listenfd = FUNC14(AF_LOCAL, SOCK_STREAM, 0)) < 0)
		FUNC5(1, "parent: socket error");
	(void)FUNC17(socket_path);
	FUNC2(&servaddr, sizeof(servaddr));
	servaddr.sun_family = AF_LOCAL;
	FUNC15(servaddr.sun_path, socket_path);
	if (FUNC1(listenfd, (struct sockaddr *) &servaddr,
	    sizeof(servaddr)) < 0)
		FUNC5(1, "parent: bind error");
	if (FUNC10(listenfd, 1024) < 0)
		FUNC5(1, "parent: listen error");

	pid = FUNC8();
	if (pid == -1)
		FUNC5(1, "fork()");
	if (pid != 0) {
		/*
		 * In the parent, repeatedly connect and disconnect from the
		 * socket, attempting to induce the race.
		 */
		FUNC3(listenfd);
		FUNC13(1);
		FUNC2(&servaddr, sizeof(servaddr));
		servaddr.sun_family = AF_LOCAL;
		FUNC15(servaddr.sun_path, socket_path);
		for (counter = 0; counter < LOOPS; counter++) {
			if ((connfd = FUNC14(AF_LOCAL, SOCK_STREAM, 0)) < 0) {
				(void)FUNC9(pid, SIGTERM);
				FUNC5(1, "parent: socket error");
			}
			if (FUNC4(connfd, (struct sockaddr *)&servaddr,
			    sizeof(servaddr)) < 0) {
			    	(void)FUNC9(pid, SIGTERM);
				FUNC5(1, "parent: connect error");
			}
			if (FUNC3(connfd) < 0) {
				(void)FUNC9(pid, SIGTERM);
				FUNC5(1, "parent: close error");
			}
			FUNC18(USLEEP);
		}
		(void)FUNC9(pid, SIGTERM);
	} else {
		/*
		 * In the child, loop accepting and closing.  We may pick up
		 * the race here so report errors from close().
		 */
		for ( ; ; ) {
			if ((connfd = FUNC0(listenfd,
			    (struct sockaddr *)NULL, NULL)) < 0)
				FUNC5(1, "child: accept error");
			if (FUNC3(connfd) < 0)
				FUNC5(1, "child: close error");
		}
	}
	FUNC12("OK\n");
	FUNC7(0);
}