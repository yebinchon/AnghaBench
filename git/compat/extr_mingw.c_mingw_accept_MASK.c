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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int sockfd1, struct sockaddr *sa, socklen_t *sz)
{
	int sockfd2;

	SOCKET s1 = (SOCKET)FUNC0(sockfd1);
	SOCKET s2 = FUNC2(s1, sa, sz);

	/* convert into a file descriptor */
	if ((sockfd2 = FUNC1(s2, O_RDWR|O_BINARY)) < 0) {
		int err = errno;
		FUNC3(s2);
		return FUNC4("unable to make a socket file descriptor: %s",
			FUNC5(err));
	}
	return sockfd2;
}