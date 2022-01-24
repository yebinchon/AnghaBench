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
struct icmp6_filter {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ic6f ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP6_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct icmp6_filter*) ; 
 int /*<<< orphan*/  FUNC1 (struct icmp6_filter*) ; 
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct icmp6_filter*,int*) ; 
 struct icmp6_filter ic6f_blockall ; 
 struct icmp6_filter ic6f_passall ; 
 scalar_t__ FUNC6 (struct icmp6_filter*,struct icmp6_filter*,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct icmp6_filter*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(int argc, char *argv[])
{
	struct icmp6_filter ic6f;
	socklen_t len;
	int s;

	FUNC1(&ic6f_passall);
	FUNC0(&ic6f_blockall);

	s = FUNC8(PF_INET6, SOCK_RAW, 0);
	if (s < 0)
		FUNC3(-1, "socket(PF_INET6, SOCK_RAW, 0)");

	/*
	 * Confirm that we can read before the first set, and that the
	 * default is to pass all ICMP.
	 */
	len = sizeof(ic6f);
	if (FUNC5(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
		FUNC3(-1, "1: getsockopt(ICMP6_FILTER)");
	if (FUNC6(&ic6f, &ic6f_passall, sizeof(ic6f)) != 0)
		FUNC4(-1, "1: getsockopt(ICMP6_FILTER) - default not passall");

	/*
	 * Confirm that we can write a pass all filter to the socket.
	 */
	len = sizeof(ic6f);
	FUNC1(&ic6f);
	if (FUNC7(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, len) < 0)
		FUNC3(-1, "2: setsockopt(ICMP6_FILTER, PASSALL)");

	/*
	 * Confirm that we can still read a pass all filter.
	 */
	len = sizeof(ic6f);
	if (FUNC5(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
		FUNC3(-1, "3: getsockopt(ICMP6_FILTER)");
	if (FUNC6(&ic6f, &ic6f_passall, sizeof(ic6f)) != 0)
		FUNC4(-1, "3: getsockopt(ICMP6_FILTER) - not passall");

	/*
	 * Confirm that we can write a block all filter to the socket.
	 */
	len = sizeof(ic6f);
	FUNC0(&ic6f);
	if (FUNC7(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, len) < 0)
		FUNC3(-1, "4: setsockopt(ICMP6_FILTER, BLOCKALL)");

	/*
	 * Confirm that we can read back a block all filter.
	 */
	len = sizeof(ic6f);
	if (FUNC5(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
		FUNC3(-1, "5: getsockopt(ICMP6_FILTER)");
	if (FUNC6(&ic6f, &ic6f_blockall, sizeof(ic6f)) != 0)
		FUNC4(-1, "5: getsockopt(ICMP6_FILTER) - not blockall");

	/*
	 * For completeness, confirm that we can reset to the default.
	 */
	len = sizeof(ic6f);
	FUNC1(&ic6f);
	if (FUNC7(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, len) < 0)
		FUNC3(-1, "6: setsockopt(ICMP6_FILTER, PASSALL)");

	/*
	 * ... And that we can read back the pass all rule again.
	 */
	len = sizeof(ic6f);
	if (FUNC5(s, IPPROTO_ICMPV6, ICMP6_FILTER, &ic6f, &len) < 0)
		FUNC3(-1, "7: getsockopt(ICMP6_FILTER)");
	if (FUNC6(&ic6f, &ic6f_passall, sizeof(ic6f)) != 0)
		FUNC4(-1, "7: getsockopt(ICMP6_FILTER) - not passall");

	FUNC2(s);
	return (0);
}