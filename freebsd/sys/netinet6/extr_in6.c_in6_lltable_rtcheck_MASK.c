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
typedef  int /*<<< orphan*/  u_int ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct nhop6_basic {int nh_flags; struct ifnet* nh_ifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int if_fib; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int NHF_GATEWAY ; 
 int RT_DEFAULT_FIB ; 
 scalar_t__ V_rt_add_addr_allfibs ; 
 int FUNC2 (int,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nhop6_basic*) ; 
 struct ifaddr* FUNC3 (struct sockaddr const*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp,
		    u_int flags,
		    const struct sockaddr *l3addr)
{
	const struct sockaddr_in6 *sin6;
	struct nhop6_basic nh6;
	struct in6_addr dst;
	uint32_t scopeid;
	int error;
	char ip6buf[INET6_ADDRSTRLEN];
	int fibnum;

	FUNC1();
	FUNC0(l3addr->sa_family == AF_INET6,
	    ("sin_family %d", l3addr->sa_family));

	sin6 = (const struct sockaddr_in6 *)l3addr;
	FUNC4(&sin6->sin6_addr, &dst, &scopeid);
	fibnum = V_rt_add_addr_allfibs ? RT_DEFAULT_FIB : ifp->if_fib;
	error = FUNC2(fibnum, &dst, scopeid, 0, 0, &nh6);
	if (error != 0 || (nh6.nh_flags & NHF_GATEWAY) || nh6.nh_ifp != ifp) {
		struct ifaddr *ifa;
		/*
		 * Create an ND6 cache for an IPv6 neighbor
		 * that is not covered by our own prefix.
		 */
		ifa = FUNC3(l3addr, ifp);
		if (ifa != NULL) {
			return 0;
		}
		FUNC6(LOG_INFO, "IPv6 address: \"%s\" is not on the network\n",
		    FUNC5(ip6buf, &sin6->sin6_addr));
		return EINVAL;
	}
	return 0;
}