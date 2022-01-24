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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V_icmp6errpps_count ; 
 int /*<<< orphan*/  V_icmp6errppslim ; 
 int /*<<< orphan*/  V_icmp6errppslim_last ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const struct in6_addr *dst, const int type,
    const int code)
{
	int ret;

	ret = 0;	/* okay to send */

	/* PPS limit */
	if (!FUNC0(&V_icmp6errppslim_last, &V_icmp6errpps_count,
	    V_icmp6errppslim)) {
		/* The packet is subject to rate limit */
		ret++;
	}

	return ret;
}