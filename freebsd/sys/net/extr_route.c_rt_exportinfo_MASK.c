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
struct sockaddr {int sa_len; } ;
struct rtentry {int rt_flags; int /*<<< orphan*/  rt_ifa; int /*<<< orphan*/  rt_ifp; int /*<<< orphan*/  rt_mtu; struct sockaddr* rt_gateway; } ;
struct rt_metrics {int /*<<< orphan*/  rmx_mtu; } ;
struct rt_addrinfo {int rti_flags; int /*<<< orphan*/  rti_ifp; int /*<<< orphan*/  rti_ifa; int /*<<< orphan*/  rti_mflags; struct rt_metrics* rti_rmx; int /*<<< orphan*/  rti_addrs; struct sockaddr** rti_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NHR_COPY ; 
 int NHR_REF ; 
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 size_t RTAX_NETMASK ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_GATEWAY ; 
 int /*<<< orphan*/  RTA_NETMASK ; 
 int RTF_GATEWAY ; 
 int /*<<< orphan*/  RTV_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,struct sockaddr*,int) ; 
 void* FUNC3 (struct rtentry*) ; 
 struct sockaddr* FUNC4 (struct rtentry*) ; 

int
FUNC5(struct rtentry *rt, struct rt_addrinfo *info, int flags)
{
	struct rt_metrics *rmx;
	struct sockaddr *src, *dst;
	int sa_len;

	if (flags & NHR_COPY) {
		/* Copy destination if dst is non-zero */
		src = FUNC3(rt);
		dst = info->rti_info[RTAX_DST];
		sa_len = src->sa_len;
		if (dst != NULL) {
			if (src->sa_len > dst->sa_len)
				return (ENOMEM);
			FUNC2(dst, src, src->sa_len);
			info->rti_addrs |= RTA_DST;
		}

		/* Copy mask if set && dst is non-zero */
		src = FUNC4(rt);
		dst = info->rti_info[RTAX_NETMASK];
		if (src != NULL && dst != NULL) {

			/*
			 * Radix stores different value in sa_len,
			 * assume rt_mask() to have the same length
			 * as rt_key()
			 */
			if (sa_len > dst->sa_len)
				return (ENOMEM);
			FUNC2(dst, src, src->sa_len);
			info->rti_addrs |= RTA_NETMASK;
		}

		/* Copy gateway is set && dst is non-zero */
		src = rt->rt_gateway;
		dst = info->rti_info[RTAX_GATEWAY];
		if ((rt->rt_flags & RTF_GATEWAY) && src != NULL && dst != NULL){
			if (src->sa_len > dst->sa_len)
				return (ENOMEM);
			FUNC2(dst, src, src->sa_len);
			info->rti_addrs |= RTA_GATEWAY;
		}
	} else {
		info->rti_info[RTAX_DST] = FUNC3(rt);
		info->rti_addrs |= RTA_DST;
		if (FUNC4(rt) != NULL) {
			info->rti_info[RTAX_NETMASK] = FUNC4(rt);
			info->rti_addrs |= RTA_NETMASK;
		}
		if (rt->rt_flags & RTF_GATEWAY) {
			info->rti_info[RTAX_GATEWAY] = rt->rt_gateway;
			info->rti_addrs |= RTA_GATEWAY;
		}
	}

	rmx = info->rti_rmx;
	if (rmx != NULL) {
		info->rti_mflags |= RTV_MTU;
		rmx->rmx_mtu = rt->rt_mtu;
	}

	info->rti_flags = rt->rt_flags;
	info->rti_ifp = rt->rt_ifp;
	info->rti_ifa = rt->rt_ifa;
	FUNC1(info->rti_ifa);
	if (flags & NHR_REF) {
		/* Do 'traditional' refcouting */
		FUNC0(info->rti_ifp);
	}

	return (0);
}