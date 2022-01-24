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
struct sockaddr_dl {int sdl_len; int /*<<< orphan*/  sdl_index; int /*<<< orphan*/  sdl_type; int /*<<< orphan*/  sdl_family; } ;
struct sockaddr {scalar_t__ sa_len; int sa_family; } ;
struct rtentry {struct ifaddr* rt_ifa; TYPE_1__* rt_ifp; } ;
struct rt_addrinfo {int rti_flags; struct sockaddr** rti_info; struct ifaddr* rti_ifa; } ;
struct rib_head {int /*<<< orphan*/  head; struct radix_node* (* rnh_lookup ) (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ *) ;} ;
struct radix_node {int rn_flags; } ;
struct ifaddr {int ifa_flags; TYPE_1__* ifa_ifp; struct sockaddr* ifa_addr; struct sockaddr* ifa_netmask; struct sockaddr* ifa_dstaddr; } ;
typedef  int /*<<< orphan*/  info ;
typedef  struct sockaddr_dl* caddr_t ;
struct TYPE_2__ {int if_fib; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_type; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  AF_LINK ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int ESRCH ; 
 int IFA_RTSELF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rib_head*) ; 
 int /*<<< orphan*/  RIB_RLOCK_TRACKER ; 
 int /*<<< orphan*/  FUNC2 (struct rib_head*) ; 
 int RNF_ROOT ; 
 struct rtentry* FUNC3 (struct radix_node*) ; 
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 size_t RTAX_NETMASK ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int RTF_HOST ; 
 int RTF_PINNED ; 
 int RTM_ADD ; 
 int RTM_DELETE ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int RT_ALL_FIBS ; 
 int RT_DEFAULT_FIB ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*) ; 
 scalar_t__ V_rt_add_addr_allfibs ; 
 int _SOCKADDR_TMPSIZE ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_dl*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifaddr*) ; 
 scalar_t__ FUNC12 (struct sockaddr*,struct sockaddr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sockaddr*,struct sockaddr*,struct sockaddr*) ; 
 scalar_t__ FUNC14 (struct rib_head*) ; 
 struct rtentry* FUNC15 (struct rtentry*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC16 (int,struct ifaddr*,int,struct rtentry*,int) ; 
 int rt_numfibs ; 
 struct rib_head* FUNC17 (int,int) ; 
 int FUNC18 (int,struct rt_addrinfo*,struct rtentry**,int) ; 
 struct radix_node* FUNC19 (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline  int
FUNC20(struct ifaddr *ifa, int cmd, int flags, int fibnum)
{
	RIB_RLOCK_TRACKER;
	struct sockaddr *dst;
	struct sockaddr *netmask;
	struct rtentry *rt = NULL;
	struct rt_addrinfo info;
	int error = 0;
	int startfib, endfib;
	char tempbuf[_SOCKADDR_TMPSIZE];
	int didwork = 0;
	int a_failure = 0;
	struct sockaddr_dl *sdl = NULL;
	struct rib_head *rnh;

	if (flags & RTF_HOST) {
		dst = ifa->ifa_dstaddr;
		netmask = NULL;
	} else {
		dst = ifa->ifa_addr;
		netmask = ifa->ifa_netmask;
	}
	if (dst->sa_len == 0)
		return(EINVAL);
	switch (dst->sa_family) {
	case AF_INET6:
	case AF_INET:
		/* We support multiple FIBs. */
		break;
	default:
		fibnum = RT_DEFAULT_FIB;
		break;
	}
	if (fibnum == RT_ALL_FIBS) {
		if (V_rt_add_addr_allfibs == 0 && cmd == (int)RTM_ADD)
			startfib = endfib = ifa->ifa_ifp->if_fib;
		else {
			startfib = 0;
			endfib = rt_numfibs - 1;
		}
	} else {
		FUNC0((fibnum < rt_numfibs), ("rtinit1: bad fibnum"));
		startfib = fibnum;
		endfib = fibnum;
	}

	/*
	 * If it's a delete, check that if it exists,
	 * it's on the correct interface or we might scrub
	 * a route to another ifa which would
	 * be confusing at best and possibly worse.
	 */
	if (cmd == RTM_DELETE) {
		/*
		 * It's a delete, so it should already exist..
		 * If it's a net, mask off the host bits
		 * (Assuming we have a mask)
		 * XXX this is kinda inet specific..
		 */
		if (netmask != NULL) {
			FUNC13(dst, (struct sockaddr *)tempbuf, netmask);
			dst = (struct sockaddr *)tempbuf;
		}
	} else if (cmd == RTM_ADD) {
		sdl = (struct sockaddr_dl *)tempbuf;
		FUNC9(sdl, sizeof(struct sockaddr_dl));
		sdl->sdl_family = AF_LINK;
		sdl->sdl_len = sizeof(struct sockaddr_dl);
		sdl->sdl_type = ifa->ifa_ifp->if_type;
		sdl->sdl_index = ifa->ifa_ifp->if_index;
        }
	/*
	 * Now go through all the requested tables (fibs) and do the
	 * requested action. Realistically, this will either be fib 0
	 * for protocols that don't do multiple tables or all the
	 * tables for those that do.
	 */
	for ( fibnum = startfib; fibnum <= endfib; fibnum++) {
		if (cmd == RTM_DELETE) {
			struct radix_node *rn;
			/*
			 * Look up an rtentry that is in the routing tree and
			 * contains the correct info.
			 */
			rnh = FUNC17(fibnum, dst->sa_family);
			if (rnh == NULL)
				/* this table doesn't exist but others might */
				continue;
			FUNC1(rnh);
			rn = rnh->rnh_lookup(dst, netmask, &rnh->head);
#ifdef RADIX_MPATH
			if (rt_mpath_capable(rnh)) {

				if (rn == NULL) 
					error = ESRCH;
				else {
					rt = RNTORT(rn);
					/*
					 * for interface route the
					 * rt->rt_gateway is sockaddr_intf
					 * for cloning ARP entries, so
					 * rt_mpath_matchgate must use the
					 * interface address
					 */
					rt = rt_mpath_matchgate(rt,
					    ifa->ifa_addr);
					if (rt == NULL) 
						error = ESRCH;
				}
			}
#endif
			error = (rn == NULL ||
			    (rn->rn_flags & RNF_ROOT) ||
			    FUNC3(rn)->rt_ifa != ifa);
			FUNC2(rnh);
			if (error) {
				/* this is only an error if bad on ALL tables */
				continue;
			}
		}
		/*
		 * Do the actual request
		 */
		FUNC9((caddr_t)&info, sizeof(info));
		FUNC11(ifa);
		info.rti_ifa = ifa;
		info.rti_flags = flags |
		    (ifa->ifa_flags & ~IFA_RTSELF) | RTF_PINNED;
		info.rti_info[RTAX_DST] = dst;
		/* 
		 * doing this for compatibility reasons
		 */
		if (cmd == RTM_ADD)
			info.rti_info[RTAX_GATEWAY] = (struct sockaddr *)sdl;
		else
			info.rti_info[RTAX_GATEWAY] = ifa->ifa_addr;
		info.rti_info[RTAX_NETMASK] = netmask;
		error = FUNC18(cmd, &info, &rt, fibnum);

		if (error == 0 && rt != NULL) {
			/*
			 * notify any listening routing agents of the change
			 */
			FUNC6(rt);
#ifdef RADIX_MPATH
			/*
			 * in case address alias finds the first address
			 * e.g. ifconfig bge0 192.0.2.246/24
			 * e.g. ifconfig bge0 192.0.2.247/24
			 * the address set in the route is 192.0.2.246
			 * so we need to replace it with 192.0.2.247
			 */
			if (memcmp(rt->rt_ifa->ifa_addr,
			    ifa->ifa_addr, ifa->ifa_addr->sa_len)) {
				ifa_free(rt->rt_ifa);
				ifa_ref(ifa);
				rt->rt_ifp = ifa->ifa_ifp;
				rt->rt_ifa = ifa;
			}
#endif
			FUNC5(rt);
			FUNC8(rt);
			FUNC16(cmd, ifa, error, rt, fibnum);
			FUNC6(rt);
			FUNC7(rt);
			if (cmd == RTM_DELETE) {
				/*
				 * If we are deleting, and we found an entry,
				 * then it's been removed from the tree..
				 * now throw it away.
				 */
				FUNC4(rt);
			} else {
				if (cmd == RTM_ADD) {
					/*
					 * We just wanted to add it..
					 * we don't actually need a reference.
					 */
					FUNC7(rt);
				}
				FUNC8(rt);
			}
			didwork = 1;
		}
		if (error)
			a_failure = error;
	}
	if (cmd == RTM_DELETE) {
		if (didwork) {
			error = 0;
		} else {
			/* we only give an error if it wasn't in any table */
			error = ((flags & RTF_HOST) ?
			    EHOSTUNREACH : ENETUNREACH);
		}
	} else {
		if (a_failure) {
			/* return an error if any of them failed */
			error = a_failure;
		}
	}
	return (error);
}