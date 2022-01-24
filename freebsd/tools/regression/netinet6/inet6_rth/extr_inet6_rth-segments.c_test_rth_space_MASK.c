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
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_RTHDR_TYPE_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3()
{
	socklen_t len;

	FUNC2("test_rth_space", sizeof("test_rth_space\0"));

	/*
	 * Test: invalid routing header type.
	 */
	len = FUNC1(~IPV6_RTHDR_TYPE_0, 0);
	FUNC0(0, len, 0, "invalid routing header type\0");

	/*
	 * Test: valid number of segments.
	 */
	len = FUNC1(IPV6_RTHDR_TYPE_0, 0);
	FUNC0(0, len, 1, "0 segments\0");
	len = FUNC1(IPV6_RTHDR_TYPE_0, 127);
	FUNC0(0, len, 1, "0 segments\0");

	/*
	 * Test: invalid number of segments.
	 */
	len = FUNC1(IPV6_RTHDR_TYPE_0, -1);
	FUNC0(0, len, 0, "-1 segments\0");
	len = FUNC1(IPV6_RTHDR_TYPE_0, 128);
	FUNC0(0, len, 0, "128 segments\0");
}