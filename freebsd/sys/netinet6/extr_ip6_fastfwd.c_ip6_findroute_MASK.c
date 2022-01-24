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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_flowinfo; int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct nhop6_basic {int nh_flags; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  ICMP6_DST_UNREACH ; 
 int /*<<< orphan*/  ICMP6_DST_UNREACH_NOROUTE ; 
 int /*<<< orphan*/  ICMP6_DST_UNREACH_REJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int NHF_BLACKHOLE ; 
 int NHF_REJECT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nhop6_basic*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip6s_cantforward ; 
 int /*<<< orphan*/  ip6s_noroute ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC5(struct nhop6_basic *pnh, const struct sockaddr_in6 *dst,
    struct mbuf *m)
{

	if (FUNC2(FUNC1(m), &dst->sin6_addr,
	    dst->sin6_scope_id, 0, dst->sin6_flowinfo, pnh) != 0) {
		FUNC0(ip6s_noroute);
		FUNC0(ip6s_cantforward);
		FUNC3(m, ICMP6_DST_UNREACH,
		    ICMP6_DST_UNREACH_NOROUTE, 0);
		return (EHOSTUNREACH);
	}
	if (pnh->nh_flags & NHF_BLACKHOLE) {
		FUNC0(ip6s_cantforward);
		FUNC4(m);
		return (EHOSTUNREACH);
	}

	if (pnh->nh_flags & NHF_REJECT) {
		FUNC0(ip6s_cantforward);
		FUNC3(m, ICMP6_DST_UNREACH,
		    ICMP6_DST_UNREACH_REJECT, 0);
		return (EHOSTUNREACH);
	}
	return (0);
}