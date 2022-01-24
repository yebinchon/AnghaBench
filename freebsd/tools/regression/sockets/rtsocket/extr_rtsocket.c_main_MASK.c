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

/* Variables and functions */
 scalar_t__ EPROTOTYPE ; 
 int /*<<< orphan*/  PF_ROUTE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC5(void)
{
	int sock, socks[2];

	sock = FUNC3(PF_ROUTE, SOCK_STREAM, 0);
	if (sock >= 0) {
		FUNC0(sock);
		FUNC2(-1, "socket(PF_ROUTE, SOCK_STREAM, 0) returned %d",
		    sock);
	}

	if (errno != EPROTOTYPE)
		FUNC1(-1, "socket(PF_ROUTE, SOCK_STREAM, 0)");

	sock = FUNC3(PF_ROUTE, SOCK_DGRAM, 0);
	if (sock >= 0) {
		FUNC0(sock);
		FUNC2(-1, "socket(PF_ROUTE, SOCK_DGRAM, 0) returned %d",
		    sock);
	}

	if (errno != EPROTOTYPE)
		FUNC1(-1, "socket(PF_ROUTE, SOCK_DGRAM, 0)");

	sock = FUNC3(PF_ROUTE, SOCK_RAW, 0);
	if (sock < 0)
		FUNC1(-1, "socket(PF_ROUTE, SOCK_RAW, 0)");
	FUNC0(sock);

	if (FUNC4(PF_ROUTE, SOCK_STREAM, 0, socks) == 0) {
		FUNC0(socks[0]);
		FUNC0(socks[1]);
		FUNC2(-1,
		    "socketpair(PF_ROUTE, SOCK_STREAM, 0, socks) success");
	}

	if (errno != EPROTOTYPE)
		FUNC1(-1, "socketpair(PF_ROUTE, SOCK_STREAM, 0, socks)");

	if (FUNC4(PF_ROUTE, SOCK_DGRAM, 0, socks) == 0) {
		FUNC0(socks[0]);
		FUNC0(socks[1]);
		FUNC2(-1,
		    "socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks) success");
	}

	if (errno != EPROTOTYPE)
		FUNC1(-1, "socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks)");

	if (FUNC4(PF_ROUTE, SOCK_RAW, 0, socks) == 0) {
		FUNC0(socks[0]);
		FUNC0(socks[1]);
		FUNC2(-1,
		    "socketpair(PF_ROUTE, SOCK_STREAM, 0, socks) success");
	}

	return (0);
}