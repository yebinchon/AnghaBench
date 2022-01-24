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
typedef  int /*<<< orphan*/  sun ;
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_path ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct sockaddr_un sun;
	pid_t childpid;
	int listenfd;

	listenfd = FUNC7(PF_UNIX, SOCK_STREAM, 0);
	if (listenfd < 0)
		FUNC2(-1, "stream_test: socket");

	FUNC1(&sun, sizeof(sun));
	sun.sun_len = sizeof(sun);
	sun.sun_family = AF_UNIX;
	FUNC8(sun.sun_path, socket_path);

	if (FUNC0(listenfd, (struct sockaddr *)&sun, sizeof(sun)) < 0)
		FUNC2(-1, "stream_test: bind");

	if (FUNC5(listenfd, -1) < 0)
		FUNC2(-1, "stream_test: listen");

	childpid = FUNC3();
	if (childpid < 0)
		FUNC2(-1, "stream_test: fork");

	if (childpid != 0) {
		FUNC6(1);
		FUNC9();
		FUNC4(childpid, SIGTERM);
		FUNC6(1);
	} else
		FUNC10(listenfd);

	(void)FUNC11(socket_path);
}