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
struct ip6_rthdr {int /*<<< orphan*/  ip6r_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPV6_RTHDR_TYPE_0 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (void*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5()
{
	int	seg;
	char	buf[10240];

	FUNC4("test_rth_segments", sizeof("test_rth_segments\0"));

	/*
	 * Test: invalid routing header type.
	 */
	if (NULL == FUNC2((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0))
		FUNC0();
	((struct ip6_rthdr *)buf)->ip6r_type = ~IPV6_RTHDR_TYPE_0;
	seg = FUNC3((const void *)buf);
	FUNC1(-1, seg, 0, "invalid routing header type\0");

	/*
	 * Test: 0 segments.
	 */
	if (NULL == FUNC2((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0))
		FUNC0();
	seg = FUNC3((const void *)buf);
	FUNC1(0, seg, 0, "0 segments\0");

	/*
	 * Test: 127 segments.
	 */
	if (NULL == FUNC2((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 127))
		FUNC0();
	seg = FUNC3((const void *)buf);
	FUNC1(127, seg, 0, "127 segments\0");

	/*
	 * Test: -1 segments.
	 */
/*
	if (NULL == inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 0))
		abort();
	((struct ip6_rthdr0 *)buf)->ip6r0_len = -1 * 2;
	seg = inet6_rth_segments((const void *)buf);
	checknum(-1, seg, 0, "-1 segments\0");
*/
	/*
	 * Test: 128 segments.
	 */
/*
	if (NULL == inet6_rth_init((void *)buf, 10240, IPV6_RTHDR_TYPE_0, 127))
		abort();
	((struct ip6_rthdr0 *)buf)->ip6r0_len = 128 * 2;
	seg = inet6_rth_segments((const void *)buf);
	checknum(-1, seg, 0, "128 segments\0");
*/
}