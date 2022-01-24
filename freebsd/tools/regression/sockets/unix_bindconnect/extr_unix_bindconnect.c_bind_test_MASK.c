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
typedef  int /*<<< orphan*/  socket_path ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 scalar_t__ EADDRINUSE ; 
 scalar_t__ EINVAL ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PF_UNIX ; 
 char* SOCK_NAME_ONE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int,char*,char const*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(const char *directory_path)
{
	char socket_path[PATH_MAX];
	struct sockaddr_un sun;
	int sock1, sock2;

	sock1 = FUNC5(PF_UNIX, SOCK_STREAM, 0);
	if (sock1 < 0) {
		FUNC7("bind_test: socket(PF_UNIX, SOCK_STREAM, 0)");
		return (-1);
	}

	if (FUNC4(socket_path, sizeof(socket_path), "%s/%s",
	    directory_path, SOCK_NAME_ONE) >= PATH_MAX) {
		FUNC7("bind_test: snprintf(socket_path)");
		FUNC2(sock1);
		return (-1);
	}

	FUNC1(&sun, sizeof(sun));
	sun.sun_len = sizeof(sun);
	sun.sun_family = AF_UNIX;
	if (FUNC4(sun.sun_path, sizeof(sun.sun_path), "%s", socket_path)
	    >= (int)sizeof(sun.sun_path)) {
		FUNC7("bind_test: snprintf(sun.sun_path)");
		FUNC2(sock1);
		return (-1);
	}

	if (FUNC0(sock1, (struct sockaddr *)&sun, sizeof(sun)) < 0) {
		FUNC7("bind_test: bind(sun) #1");
		FUNC2(sock1);
		return (-1);
	}

	FUNC3(socket_path);

	/*
	 * Once a STREAM UNIX domain socket has been bound, it can't be
	 * rebound.  Expected error is EINVAL.
	 */
	if (FUNC0(sock1, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
		FUNC8("bind_test: bind(sun) #2 succeeded");
		FUNC2(sock1);
		return (-1);
	}
	if (errno != EINVAL) {
		FUNC7("bind_test: bind(sun) #2");
		FUNC2(sock1);
		return (-1);
	}

	sock2 = FUNC5(PF_UNIX, SOCK_STREAM, 0);
	if (sock2 < 0) {
		FUNC7("bind_test: socket(PF_UNIX, SOCK_STREAM, 0)");
		FUNC2(sock1);
		return (-1);
	}

	/*
	 * Since a socket is already bound to the pathname, it can't be bound
	 * to a second socket.  Expected error is EADDRINUSE.
	 */
	if (FUNC0(sock2, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
		FUNC8("bind_test: bind(sun) #3 succeeded");
		FUNC2(sock1);
		FUNC2(sock2);
		return (-1);
	}
	if (errno != EADDRINUSE) {
		FUNC7("bind_test: bind(sun) #2");
		FUNC2(sock1);
		FUNC2(sock2);
		return (-1);
	}

	FUNC2(sock1);

	/*
	 * The socket bound to the pathname has been closed, but the pathname
	 * can't be reused without first being unlinked.  Expected error is
	 * EADDRINUSE.
	 */
	if (FUNC0(sock2, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
		FUNC8("bind_test: bind(sun) #4 succeeded");
		FUNC2(sock2);
		return (-1);
	}
	if (errno != EADDRINUSE) {
		FUNC7("bind_test: bind(sun) #4");
		FUNC2(sock2);
		return (-1);
	}

	FUNC6(socket_path);

	/*
	 * The pathname is now free, so the socket should be able to bind to
	 * it.
	 */
	if (FUNC0(sock2, (struct sockaddr *)&sun, sizeof(sun)) < 0) {
		FUNC7("bind_test: bind(sun) #5");
		FUNC2(sock2);
		return (-1);
	}

	FUNC2(sock2);
	return (0);
}