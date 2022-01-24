#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct in6_addr {scalar_t__* s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; struct in6_addr sin6_addr; scalar_t__ sin6_scope_id; } ;
struct sockaddr_dl {scalar_t__ sdl_index; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct rtentry {int rt_flags; TYPE_1__* rt_gateway; struct ifnet* rt_ifp; } ;
struct route_in6 {struct rtentry* ro_rt; struct sockaddr_in6 ro_dst; } ;
struct route {int dummy; } ;
struct ip6_pktopts {struct in6_pktinfo* ip6po_pktinfo; struct sockaddr_in6* ip6po_nexthop; struct route_in6 ip6po_nextroute; } ;
struct ip6_moptions {struct ifnet* im6o_multicast_ifp; } ;
struct in6_pktinfo {scalar_t__ ipi6_ifindex; } ;
struct ifnet {int if_flags; scalar_t__ if_index; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_LINK ; 
 int EHOSTUNREACH ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 scalar_t__ FUNC4 (struct in6_addr*) ; 
 scalar_t__ FUNC5 (struct in6_addr*) ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct route_in6*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*) ; 
 int RTF_GATEWAY ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in6*,int) ; 
 struct ifnet* FUNC11 (scalar_t__) ; 
 struct ifnet* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC14 (struct route_in6*,int /*<<< orphan*/ ) ; 
 struct rtentry* FUNC15 (struct sockaddr*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,struct in6_addr*) ; 
 int /*<<< orphan*/  ip6s_noroute ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct route*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sockaddr_in6* FUNC21 (struct sockaddr_in6*) ; 

__attribute__((used)) static int
FUNC22(struct sockaddr_in6 *dstsock, struct ip6_pktopts *opts,
    struct ip6_moptions *mopts, struct route_in6 *ro,
    struct ifnet **retifp, struct rtentry **retrt, int norouteok, u_int fibnum)
{
	int error = 0;
	struct ifnet *ifp = NULL;
	struct rtentry *rt = NULL;
	struct sockaddr_in6 *sin6_next;
	struct in6_pktinfo *pi = NULL;
	struct in6_addr *dst = &dstsock->sin6_addr;
	uint32_t zoneid;
#if 0
	char ip6buf[INET6_ADDRSTRLEN];

	if (dstsock->sin6_addr.s6_addr32[0] == 0 &&
	    dstsock->sin6_addr.s6_addr32[1] == 0 &&
	    !IN6_IS_ADDR_LOOPBACK(&dstsock->sin6_addr)) {
		printf("in6_selectroute: strange destination %s\n",
		       ip6_sprintf(ip6buf, &dstsock->sin6_addr));
	} else {
		printf("in6_selectroute: destination = %s%%%d\n",
		       ip6_sprintf(ip6buf, &dstsock->sin6_addr),
		       dstsock->sin6_scope_id); /* for debug */
	}
#endif

	/* If the caller specify the outgoing interface explicitly, use it. */
	if (opts && (pi = opts->ip6po_pktinfo) != NULL && pi->ipi6_ifindex) {
		/* XXX boundary check is assumed to be already done. */
		ifp = FUNC11(pi->ipi6_ifindex);
		if (ifp != NULL &&
		    (norouteok || retrt == NULL ||
		    FUNC5(dst))) {
			/*
			 * we do not have to check or get the route for
			 * multicast.
			 */
			goto done;
		} else
			goto getroute;
	}
	/*
	 * If the destination address is a multicast address and the outgoing
	 * interface for the address is specified by the caller, use it.
	 */
	if (FUNC5(dst) &&
	    mopts != NULL && (ifp = mopts->im6o_multicast_ifp) != NULL) {
		goto done; /* we do not need a route for multicast. */
	}
	/*
	 * If destination address is LLA or link- or node-local multicast,
	 * use it's embedded scope zone id to determine outgoing interface.
	 */
	if (FUNC3(dst) ||
	    FUNC4(dst)) {
		zoneid = FUNC18(FUNC13(dst));
		if (zoneid > 0) {
			ifp = FUNC12(zoneid);
			goto done;
		}
	}

  getroute:
	/*
	 * If the next hop address for the packet is specified by the caller,
	 * use it as the gateway.
	 */
	if (opts && opts->ip6po_nexthop) {
		struct route_in6 *ron;

		sin6_next = FUNC21(opts->ip6po_nexthop);
		if (FUNC1(&sin6_next->sin6_addr)) {
			/*
			 * Next hop is LLA, thus it should be neighbor.
			 * Determine outgoing interface by zone index.
			 */
			zoneid = FUNC18(FUNC13(&sin6_next->sin6_addr));
			if (zoneid > 0) {
				ifp = FUNC12(zoneid);
				goto done;
			}
		}
		ron = &opts->ip6po_nextroute;
		/* Use a cached route if it exists and is valid. */
		if (ron->ro_rt != NULL && (
		    (ron->ro_rt->rt_flags & RTF_UP) == 0 ||
		    ron->ro_dst.sin6_family != AF_INET6 ||
		    !FUNC0(&ron->ro_dst.sin6_addr,
			&sin6_next->sin6_addr)))
			FUNC7(ron);
		if (ron->ro_rt == NULL) {
			ron->ro_dst = *sin6_next;
			FUNC14(ron, fibnum); /* multi path case? */
		}
		/*
		 * The node identified by that address must be a
		 * neighbor of the sending host.
		 */
		if (ron->ro_rt == NULL ||
		    (ron->ro_rt->rt_flags & RTF_GATEWAY) != 0)
			error = EHOSTUNREACH;
		else {
			rt = ron->ro_rt;
			ifp = rt->rt_ifp;
		}
		goto done;
	}

	/*
	 * Use a cached route if it exists and is valid, else try to allocate
	 * a new one.  Note that we should check the address family of the
	 * cached destination, in case of sharing the cache with IPv4.
	 */
	if (ro) {
		if (ro->ro_rt &&
		    (!(ro->ro_rt->rt_flags & RTF_UP) ||
		     ((struct sockaddr *)(&ro->ro_dst))->sa_family != AF_INET6 ||
		     !FUNC0(&FUNC21(&ro->ro_dst)->sin6_addr,
		     dst))) {
			FUNC8(ro->ro_rt);
			ro->ro_rt = (struct rtentry *)NULL;
		}
		if (ro->ro_rt == (struct rtentry *)NULL) {
			struct sockaddr_in6 *sa6;

			/* No route yet, so try to acquire one */
			FUNC10(&ro->ro_dst, sizeof(struct sockaddr_in6));
			sa6 = (struct sockaddr_in6 *)&ro->ro_dst;
			*sa6 = *dstsock;
			sa6->sin6_scope_id = 0;

#ifdef RADIX_MPATH
				rtalloc_mpath_fib((struct route *)ro,
				    ntohl(sa6->sin6_addr.s6_addr32[3]), fibnum);
#else			
				ro->ro_rt = FUNC15((struct sockaddr *)
				    &ro->ro_dst, 0, 0UL, fibnum);
				if (ro->ro_rt)
					FUNC9(ro->ro_rt);
#endif
		}
				
		/*
		 * do not care about the result if we have the nexthop
		 * explicitly specified.
		 */
		if (opts && opts->ip6po_nexthop)
			goto done;

		if (ro->ro_rt) {
			ifp = ro->ro_rt->rt_ifp;

			if (ifp == NULL) { /* can this really happen? */
				FUNC8(ro->ro_rt);
				ro->ro_rt = NULL;
			}
		}
		if (ro->ro_rt == NULL)
			error = EHOSTUNREACH;
		rt = ro->ro_rt;

		/*
		 * Check if the outgoing interface conflicts with
		 * the interface specified by ipi6_ifindex (if specified).
		 * Note that loopback interface is always okay.
		 * (this may happen when we are sending a packet to one of
		 *  our own addresses.)
		 */
		if (ifp && opts && opts->ip6po_pktinfo &&
		    opts->ip6po_pktinfo->ipi6_ifindex) {
			if (!(ifp->if_flags & IFF_LOOPBACK) &&
			    ifp->if_index !=
			    opts->ip6po_pktinfo->ipi6_ifindex) {
				error = EHOSTUNREACH;
				goto done;
			}
		}
	}

  done:
	if (ifp == NULL && rt == NULL) {
		/*
		 * This can happen if the caller did not pass a cached route
		 * nor any other hints.  We treat this case an error.
		 */
		error = EHOSTUNREACH;
	}
	if (error == EHOSTUNREACH)
		FUNC6(ip6s_noroute);

	if (retifp != NULL) {
		*retifp = ifp;

		/*
		 * Adjust the "outgoing" interface.  If we're going to loop 
		 * the packet back to ourselves, the ifp would be the loopback 
		 * interface. However, we'd rather know the interface associated 
		 * to the destination address (which should probably be one of 
		 * our own addresses.)
		 */
		if (rt) {
			if ((rt->rt_ifp->if_flags & IFF_LOOPBACK) &&
			    (rt->rt_gateway->sa_family == AF_LINK))
				*retifp = 
					FUNC11(((struct sockaddr_dl *)
						       rt->rt_gateway)->sdl_index);
		}
	}

	if (retrt != NULL)
		*retrt = rt;	/* rt may be NULL */

	return (error);
}