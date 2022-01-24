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
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin6 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(int argc, char *argv[])
{
	struct sockaddr_in6 sin6;
	int s;

	/*
	 * UDPv6 simple test.
	 */
	s = FUNC5(PF_INET6, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC3(-1, "socket(PF_INET6, SOCK_DGRAM, 0)");
	FUNC1(s);

	/*
	 * UDPv6 connected case -- connect UDPv6 to an arbitrary port so that
	 * when we close the socket, it goes through the disconnect logic.
	 */
	s = FUNC5(PF_INET6, SOCK_DGRAM, 0);
	if (s < 0)
		FUNC3(-1, "socket(PF_INET6, SOCK_DGRAM, 0)");
	FUNC0(&sin6, sizeof(sin6));
	sin6.sin6_len = sizeof(sin6);
	sin6.sin6_family = AF_INET6;
	sin6.sin6_addr = in6addr_loopback;
	sin6.sin6_port = FUNC4(1024);
	if (FUNC2(s, (struct sockaddr *)&sin6, sizeof(sin6)) < 0)
		FUNC3(-1, "connect(SOCK_DGRAM, ::1)");
	FUNC1(s);

	/*
	 * TCPv6.
	 */
	s = FUNC5(PF_INET6, SOCK_STREAM, 0);
	if (s < 0)
		FUNC3(-1, "socket(PF_INET6, SOCK_STREAM, 0)");
	FUNC1(s);

	/*
	 * Raw IPv6.
	 */
	s = FUNC5(PF_INET6, SOCK_RAW, 0);
	if (s < 0)
		FUNC3(-1, "socket(PF_INET6, SOCK_RAW, 0)");
	FUNC1(s);

	return (0);
}