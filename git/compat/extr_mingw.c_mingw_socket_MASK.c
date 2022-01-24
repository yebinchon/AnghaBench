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
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int O_BINARY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  errno ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int domain, int type, int protocol)
{
	int sockfd;
	SOCKET s;

	FUNC4();
	s = FUNC1(domain, type, protocol, NULL, 0, 0);
	if (s == INVALID_SOCKET) {
		/*
		 * WSAGetLastError() values are regular BSD error codes
		 * biased by WSABASEERR.
		 * However, strerror() does not know about networking
		 * specific errors, which are values beginning at 38 or so.
		 * Therefore, we choose to leave the biased error code
		 * in errno so that _if_ someone looks up the code somewhere,
		 * then it is at least the number that are usually listed.
		 */
		errno = FUNC0();
		return -1;
	}
	/* convert into a file descriptor */
	if ((sockfd = FUNC2(s, O_RDWR|O_BINARY)) < 0) {
		FUNC3(s);
		return FUNC5("unable to make a socket file descriptor: %s",
			FUNC6(errno));
	}
	return sockfd;
}