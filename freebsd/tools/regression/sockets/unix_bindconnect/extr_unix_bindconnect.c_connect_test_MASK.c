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
 scalar_t__ ECONNREFUSED ; 
 scalar_t__ ENOENT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PF_UNIX ; 
 char* SOCK_NAME_TWO ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int,char*,char const*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int
FUNC11(const char *directory_path)
{
	char socket_path[PATH_MAX];
	struct sockaddr_un sun;
	int sock1, sock2;

	sock1 = FUNC7(PF_UNIX, SOCK_STREAM, 0);
	if (sock1 < 0) {
		FUNC9("connect_test: socket(PF_UNIX, SOCK_STREAM, 0)");
		return (-1);
	}

	if (FUNC6(socket_path, sizeof(socket_path), "%s/%s",
	    directory_path, SOCK_NAME_TWO) >= PATH_MAX) {
		FUNC9("connect_test: snprintf(socket_path)");
		FUNC2(sock1);
		return (-1);
	}

	FUNC1(&sun, sizeof(sun));
	sun.sun_len = sizeof(sun);
	sun.sun_family = AF_UNIX;
	if (FUNC6(sun.sun_path, sizeof(sun.sun_path), "%s", socket_path)
	    >= (int)sizeof(sun.sun_path)) {
		FUNC9("connect_test: snprintf(sun.sun_path)");
		FUNC2(sock1);
		return (-1);
	}

	/*
	 * Try connecting to a path that doesn't yet exist.  Should fail with
	 * ENOENT.
	 */
	if (FUNC3(sock1, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
		FUNC10("connect_test: connect(sun) #1 succeeded");
		FUNC2(sock1);
		return (-1);
	}
	if (errno != ENOENT) {
		FUNC9("connect_test: connect(sun) #1");
		FUNC2(sock1);
		return (-1);
	}

	if (FUNC0(sock1, (struct sockaddr *)&sun, sizeof(sun)) < 0) {
		FUNC9("connect_test: bind(sun) #1");
		FUNC2(sock1);
		return (-1);
	}

	if (FUNC4(sock1, 3) < 0) {
		FUNC9("connect_test: listen(sock1)");
		FUNC2(sock1);
		return (-1);
	}

	FUNC5(socket_path);

	sock2 = FUNC7(PF_UNIX, SOCK_STREAM, 0);
	if (sock2 < 0) {
		FUNC9("socket(PF_UNIX, SOCK_STREAM, 0)");
		FUNC2(sock1);
		return (-1);
	}

	/*
	 * Do a simple connect and make sure that works.
	 */
	if (FUNC3(sock2, (struct sockaddr *)&sun, sizeof(sun)) < 0) {
		FUNC9("connect(sun) #2");
		FUNC2(sock1);
		return (-1);
	}

	FUNC2(sock2);

	FUNC2(sock1);

	sock2 = FUNC7(PF_UNIX, SOCK_STREAM, 0);
	if (sock2 < 0) {
		FUNC9("socket(PF_UNIX, SOCK_STREAM, 0)");
		return (-1);
	}

	/*
	 * Confirm that once the listen socket is closed, we get a
	 * connection refused (ECONNREFUSED) when attempting to connect to
	 * the pathname.
	 */
	if (FUNC3(sock2, (struct sockaddr *)&sun, sizeof(sun)) == 0) {
		FUNC10("connect(sun) #3 succeeded");
		FUNC2(sock2);
		return (-1);
	}
	if (errno != ECONNREFUSED) {
		FUNC9("connect(sun) #3");
		FUNC2(sock2);
		return (-1);
	}

	FUNC2(sock2);
	FUNC8(socket_path);
	return (0);
}