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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int u_int16_t ;
struct tcphdr {int dummy; } ;
struct pf_addr {int /*<<< orphan*/  v6; int /*<<< orphan*/  v4; } ;
struct nhop6_basic {int /*<<< orphan*/  nh_mtu; } ;
struct nhop4_basic {int /*<<< orphan*/  nh_mtu; } ;
struct ip6_hdr {int dummy; } ;
struct ip {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int sa_family_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int V_tcp_mssdflt ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nhop4_basic*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nhop6_basic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static u_int16_t
FUNC5(struct pf_addr *addr, sa_family_t af, int rtableid, u_int16_t offer)
{
#ifdef INET
	struct nhop4_basic	nh4;
#endif /* INET */
#ifdef INET6
	struct nhop6_basic	nh6;
	struct in6_addr		dst6;
	uint32_t		scopeid;
#endif /* INET6 */
	int			 hlen = 0;
	uint16_t		 mss = 0;

	switch (af) {
#ifdef INET
	case AF_INET:
		hlen = sizeof(struct ip);
		if (fib4_lookup_nh_basic(rtableid, addr->v4, 0, 0, &nh4) == 0)
			mss = nh4.nh_mtu - hlen - sizeof(struct tcphdr);
		break;
#endif /* INET */
#ifdef INET6
	case AF_INET6:
		hlen = sizeof(struct ip6_hdr);
		in6_splitscope(&addr->v6, &dst6, &scopeid);
		if (fib6_lookup_nh_basic(rtableid, &dst6, scopeid, 0,0,&nh6)==0)
			mss = nh6.nh_mtu - hlen - sizeof(struct tcphdr);
		break;
#endif /* INET6 */
	}

	mss = FUNC3(V_tcp_mssdflt, mss);
	mss = FUNC4(mss, offer);
	mss = FUNC3(mss, 64);		/* sanity - at least max opt space */
	return (mss);
}