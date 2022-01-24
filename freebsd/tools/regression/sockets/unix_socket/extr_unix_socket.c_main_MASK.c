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
 int /*<<< orphan*/  PF_LOCAL ; 
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

	sock = FUNC3(PF_LOCAL, SOCK_STREAM, 0);
	if (sock < 0)
		FUNC1(-1, "socket(PF_LOCAL, SOCK_STREAM, 0)");
	FUNC0(sock);

	sock = FUNC3(PF_LOCAL, SOCK_DGRAM, 0);
	if (sock < 0)
		FUNC1(-1, "socket(PF_LOCAL, SOCK_DGRAM, 0)");
	FUNC0(sock);

	sock = FUNC3(PF_LOCAL, SOCK_RAW, 0);
	if (sock >= 0) {
		FUNC0(sock);
		FUNC2(-1, "socket(PF_LOCAL, SOCK_RAW, 0) returned %d", sock);
	}
	if (errno != EPROTOTYPE)
		FUNC1(-1, "socket(PF_LOCAL, SOCK_RAW, 0)");

	if (FUNC4(PF_LOCAL, SOCK_STREAM, 0, socks) < 0)
		FUNC1(-1, "socketpair(PF_LOCAL, SOCK_STREAM, 0, socks)");
	if (socks[0] < 0)
		FUNC2(-1, "socketpair(PF_LOCAL, SOCK_STREAM, 0, socks) [0] < 0");
	if (socks[1] < 0)
		FUNC2(-1, "socketpair(PF_LOCAL, SOCK_STREAM, 0, socks) [1] < 1");
	FUNC0(socks[0]);
	FUNC0(socks[1]);

	if (FUNC4(PF_LOCAL, SOCK_DGRAM, 0, socks) < 0)
		FUNC1(-1, "socketpair(PF_LOCAL, SOCK_DGRAM, 0, socks)");
	if (socks[0] < 0)
		FUNC2(-1, "socketpair(PF_LOCAL, SOCK_DGRAM, 0, socks) [0] < 0");
	if (socks[1] < 0)
		FUNC2(-1, "socketpair(PF_LOCAL, SOCK_DGRAM, 0, socks) [1] < 1");
	FUNC0(socks[0]);
	FUNC0(socks[1]);

	return (0);
}