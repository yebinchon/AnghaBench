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
struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin2 ;
typedef  int /*<<< orphan*/  sin1 ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  UDP_PORT1 ; 
 int /*<<< orphan*/  UDP_PORT2 ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(int *fd1p, int *fd2p)
{
	struct sockaddr_in sin1, sin2;
	int sock1, sock2;

	sock1 = FUNC6(PF_INET, SOCK_DGRAM, 0);
	if (sock1 == -1)
		return (-1);

	sock2 = FUNC6(PF_INET, SOCK_DGRAM, 0);
	if (sock2 == -1) {
		FUNC2(sock1);
		return (-1);
	}

	FUNC1(&sin1, sizeof(sin1));
	sin1.sin_len = sizeof(sin1);
	sin1.sin_family = AF_INET;
	sin1.sin_addr.s_addr = FUNC4(INADDR_LOOPBACK);
	sin1.sin_port = FUNC5(UDP_PORT1);

	FUNC1(&sin2, sizeof(sin2));
	sin2.sin_len = sizeof(sin2);
	sin2.sin_family = AF_INET;
	sin2.sin_addr.s_addr = FUNC4(INADDR_LOOPBACK);
	sin2.sin_port = FUNC5(UDP_PORT2);

	if (FUNC0(sock1, (struct sockaddr *) &sin1, sizeof(sin1)) < 0) {
		FUNC2(sock1);
		FUNC2(sock2);
		return (-1);
	}

	if (FUNC0(sock2, (struct sockaddr *) &sin2, sizeof(sin2)) < 0) {
		FUNC2(sock1);
		FUNC2(sock2);
		return (-1);
	}

	if (FUNC3(sock1, (struct sockaddr *) &sin2, sizeof(sin2)) < 0) {
		FUNC2(sock1);
		FUNC2(sock2);
		return (-1);
	}

	if (FUNC3(sock2, (struct sockaddr *) &sin1, sizeof(sin1)) < 0) {
		FUNC2(sock1);
		FUNC2(sock2);
		return (-1);
	}

	*fd1p = sock1;
	*fd2p = sock2;

	return (0);
}