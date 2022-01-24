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
struct nhop4_basic {int nh_flags; } ;
struct mbuf {int dummy; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  ICMP_UNREACH ; 
 int /*<<< orphan*/  ICMP_UNREACH_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int NHF_BLACKHOLE ; 
 int NHF_BROADCAST ; 
 int NHF_REJECT ; 
 int /*<<< orphan*/  FUNC2 (struct nhop4_basic*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nhop4_basic*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ips_cantforward ; 
 int /*<<< orphan*/  ips_noroute ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC6(struct nhop4_basic *pnh, struct in_addr dest, struct mbuf *m)
{

	FUNC2(pnh, sizeof(*pnh));
	if (FUNC3(FUNC1(m), dest, 0, 0, pnh) != 0) {
		FUNC0(ips_noroute);
		FUNC0(ips_cantforward);
		FUNC4(m, ICMP_UNREACH, ICMP_UNREACH_HOST, 0, 0);
		return (EHOSTUNREACH);
	}
	/*
	 * Drop blackholed traffic and directed broadcasts.
	 */
	if ((pnh->nh_flags & (NHF_BLACKHOLE | NHF_BROADCAST)) != 0) {
		FUNC0(ips_cantforward);
		FUNC5(m);
		return (EHOSTUNREACH);
	}

	if (pnh->nh_flags & NHF_REJECT) {
		FUNC0(ips_cantforward);
		FUNC4(m, ICMP_UNREACH, ICMP_UNREACH_HOST, 0, 0);
		return (EHOSTUNREACH);
	}

	return (0);
}