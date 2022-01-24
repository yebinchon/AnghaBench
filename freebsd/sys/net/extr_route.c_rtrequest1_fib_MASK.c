#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct rtentry {int rt_flags; int rt_weight; struct ifaddr* rt_ifa; int /*<<< orphan*/  rt_nodes; int /*<<< orphan*/  rt_ifp; scalar_t__ rt_fibnum; } ;
struct rt_addrinfo {int rti_flags; struct sockaddr** rti_info; struct ifaddr* rti_ifa; } ;
struct rib_head {int /*<<< orphan*/  rnh_gen; int /*<<< orphan*/  head; struct radix_node* (* rnh_addaddr ) (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct radix_node {int dummy; } ;
struct ifaddr {int /*<<< orphan*/  (* ifa_rtrequest ) (int,struct rtentry*,struct rt_addrinfo*) ;int /*<<< orphan*/  ifa_ifp; } ;
typedef  int /*<<< orphan*/  mdst ;
struct TYPE_3__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 133 
#define  AF_INET6 132 
 int AF_LINK ; 
 int AF_UNSPEC ; 
 int EAFNOSUPPORT ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct rib_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct rib_head*) ; 
 size_t RTAX_DST ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int RTF_PINNED ; 
 int RTF_RNH_LOCKED ; 
 int RTF_UP ; 
#define  RTM_ADD 131 
#define  RTM_CHANGE 130 
#define  RTM_DELETE 129 
#define  RTM_RESOLVE 128 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 scalar_t__ RT_DEFAULT_FIB ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  V_rtzone ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr*,struct sockaddr*,int) ; 
 struct sockaddr* dst ; 
 int flags ; 
 TYPE_1__* gateway ; 
 int /*<<< orphan*/  FUNC10 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifaddr*) ; 
 int /*<<< orphan*/ * netmask ; 
 int FUNC12 (struct rt_addrinfo*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct rib_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct rib_head*,struct rtentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct rtentry*,struct rt_addrinfo*) ; 
 scalar_t__ rt_numfibs ; 
 int FUNC18 (struct rtentry*,struct sockaddr*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (struct rt_addrinfo*,struct rtentry*) ; 
 struct rib_head* FUNC20 (scalar_t__,int) ; 
 struct rtentry* FUNC21 (struct rib_head*,struct rt_addrinfo*,int*) ; 
 int FUNC22 (struct rib_head*,struct rt_addrinfo*,struct rtentry**,scalar_t__) ; 
 struct radix_node* FUNC23 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct radix_node* FUNC24 (struct sockaddr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int,struct rtentry*,struct rt_addrinfo*) ; 
 struct rtentry* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,struct rtentry*) ; 

int
FUNC28(int req, struct rt_addrinfo *info, struct rtentry **ret_nrt,
				u_int fibnum)
{
	int error = 0;
	struct rtentry *rt, *rt_old;
	struct radix_node *rn;
	struct rib_head *rnh;
	struct ifaddr *ifa;
	struct sockaddr *ndst;
	struct sockaddr_storage mdst;

	FUNC0((fibnum < rt_numfibs), ("rtrequest1_fib: bad fibnum"));
	FUNC0((flags & RTF_RNH_LOCKED) == 0, ("rtrequest1_fib: locked"));
	switch (dst->sa_family) {
	case AF_INET6:
	case AF_INET:
		/* We support multiple FIBs. */
		break;
	default:
		fibnum = RT_DEFAULT_FIB;
		break;
	}

	/*
	 * Find the correct routing tree to use for this Address Family
	 */
	rnh = FUNC20(fibnum, dst->sa_family);
	if (rnh == NULL)
		return (EAFNOSUPPORT);

	/*
	 * If we are adding a host route then we don't want to put
	 * a netmask in the tree, nor do we want to clone it.
	 */
	if (flags & RTF_HOST)
		netmask = NULL;

	switch (req) {
	case RTM_DELETE:
		if (netmask) {
			if (dst->sa_len > sizeof(mdst))
				return (EINVAL);
			FUNC14(dst, (struct sockaddr *)&mdst, netmask);
			dst = (struct sockaddr *)&mdst;
		}

		FUNC1(rnh);
		rt = FUNC21(rnh, info, &error);
		FUNC2(rnh);
		if (error != 0)
			return (error);

		FUNC17(rt, info);

		/*
		 * If the caller wants it, then it can have it,
		 * but it's up to it to free the rtentry as we won't be
		 * doing it.
		 */
		if (ret_nrt) {
			*ret_nrt = rt;
			FUNC7(rt);
		} else
			FUNC4(rt);
		break;
	case RTM_RESOLVE:
		/*
		 * resolve was only used for route cloning
		 * here for compat
		 */
		break;
	case RTM_ADD:
		if ((flags & RTF_GATEWAY) && !gateway)
			return (EINVAL);
		if (dst && gateway && (dst->sa_family != gateway->sa_family) && 
		    (gateway->sa_family != AF_UNSPEC) && (gateway->sa_family != AF_LINK))
			return (EINVAL);

		if (info->rti_ifa == NULL) {
			error = FUNC12(info, fibnum);
			if (error)
				return (error);
		}
		rt = FUNC26(V_rtzone, M_NOWAIT);
		if (rt == NULL) {
			return (ENOBUFS);
		}
		rt->rt_flags = RTF_UP | flags;
		rt->rt_fibnum = fibnum;
		/*
		 * Add the gateway. Possibly re-malloc-ing the storage for it.
		 */
		if ((error = FUNC18(rt, dst, gateway)) != 0) {
			FUNC27(V_rtzone, rt);
			return (error);
		}

		/*
		 * point to the (possibly newly malloc'd) dest address.
		 */
		ndst = (struct sockaddr *)FUNC13(rt);

		/*
		 * make sure it contains the value we want (masked if needed).
		 */
		if (netmask) {
			FUNC14(dst, ndst, netmask);
		} else
			FUNC9(dst, ndst, dst->sa_len);

		/*
		 * We use the ifa reference returned by rt_getifa_fib().
		 * This moved from below so that rnh->rnh_addaddr() can
		 * examine the ifa and  ifa->ifa_ifp if it so desires.
		 */
		ifa = info->rti_ifa;
		FUNC11(ifa);
		rt->rt_ifa = ifa;
		rt->rt_ifp = ifa->ifa_ifp;
		rt->rt_weight = 1;

		FUNC19(info, rt);

		FUNC1(rnh);
		FUNC6(rt);
#ifdef RADIX_MPATH
		/* do not permit exactly the same dst/mask/gw pair */
		if (rt_mpath_capable(rnh) &&
			rt_mpath_conflict(rnh, rt, netmask)) {
			RIB_WUNLOCK(rnh);

			ifa_free(rt->rt_ifa);
			R_Free(rt_key(rt));
			uma_zfree(V_rtzone, rt);
			return (EEXIST);
		}
#endif

		/* XXX mtu manipulation will be done in rnh_addaddr -- itojun */
		rn = rnh->rnh_addaddr(ndst, netmask, &rnh->head, rt->rt_nodes);

		rt_old = NULL;
		if (rn == NULL && (info->rti_flags & RTF_PINNED) != 0) {

			/*
			 * Force removal and re-try addition
			 * TODO: better multipath&pinned support
			 */
			struct sockaddr *info_dst = info->rti_info[RTAX_DST];
			info->rti_info[RTAX_DST] = ndst;
			/* Do not delete existing PINNED(interface) routes */
			info->rti_flags &= ~RTF_PINNED;
			rt_old = FUNC21(rnh, info, &error);
			info->rti_flags |= RTF_PINNED;
			info->rti_info[RTAX_DST] = info_dst;
			if (rt_old != NULL)
				rn = rnh->rnh_addaddr(ndst, netmask, &rnh->head,
				    rt->rt_nodes);
		}
		FUNC2(rnh);

		if (rt_old != NULL)
			FUNC7(rt_old);

		/*
		 * If it still failed to go into the tree,
		 * then un-make it (this should be a function)
		 */
		if (rn == NULL) {
			FUNC10(rt->rt_ifa);
			FUNC8(FUNC13(rt));
			FUNC27(V_rtzone, rt);
			return (EEXIST);
		} 

		if (rt_old != NULL) {
			FUNC17(rt_old, info);
			FUNC3(rt_old);
		}

		/*
		 * If this protocol has something to add to this then
		 * allow it to do that as well.
		 */
		if (ifa->ifa_rtrequest)
			ifa->ifa_rtrequest(req, rt, info);

		/*
		 * actually return a resultant rtentry and
		 * give the caller a single reference.
		 */
		if (ret_nrt) {
			*ret_nrt = rt;
			FUNC5(rt);
		}
		rnh->rnh_gen++;		/* Routing table updated */
		FUNC7(rt);
		break;
	case RTM_CHANGE:
		FUNC1(rnh);
		error = FUNC22(rnh, info, ret_nrt, fibnum);
		FUNC2(rnh);
		break;
	default:
		error = EOPNOTSUPP;
	}

	return (error);
}