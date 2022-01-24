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
typedef  void* u_long ;
typedef  void* u_int32_t ;
typedef  scalar_t__ u_int ;
struct in6_addr {int dummy; } ;
struct in_conninfo {struct in6_addr inc6_faddr; int /*<<< orphan*/  inc_flags; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  inc ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 void* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  INC_ISIPV6 ; 
 scalar_t__ IPPROTO_TCP ; 
 void* IPV6_MMTU ; 
 int /*<<< orphan*/  FUNC1 (struct in_conninfo*,int) ; 
 void* FUNC2 (void*,void*) ; 
 void* FUNC3 (struct in_conninfo*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, const struct in6_addr *dst, u_long rt_mtu,
    u_long *mtup, int *alwaysfragp, u_int proto)
{
	u_long mtu = 0;
	int alwaysfrag = 0;
	int error = 0;

	if (rt_mtu > 0) {
		u_int32_t ifmtu;
		struct in_conninfo inc;

		FUNC1(&inc, sizeof(inc));
		inc.inc_flags |= INC_ISIPV6;
		inc.inc6_faddr = *dst;

		ifmtu = FUNC0(ifp);

		/* TCP is known to react to pmtu changes so skip hc */
		if (proto != IPPROTO_TCP)
			mtu = FUNC3(&inc);

		if (mtu)
			mtu = FUNC2(mtu, rt_mtu);
		else
			mtu = rt_mtu;
		if (mtu == 0)
			mtu = ifmtu;
		else if (mtu < IPV6_MMTU) {
			/*
			 * RFC2460 section 5, last paragraph:
			 * if we record ICMPv6 too big message with
			 * mtu < IPV6_MMTU, transmit packets sized IPV6_MMTU
			 * or smaller, with framgent header attached.
			 * (fragment header is needed regardless from the
			 * packet size, for translators to identify packets)
			 */
			alwaysfrag = 1;
			mtu = IPV6_MMTU;
		}
	} else if (ifp) {
		mtu = FUNC0(ifp);
	} else
		error = EHOSTUNREACH; /* XXX */

	*mtup = mtu;
	if (alwaysfragp)
		*alwaysfragp = alwaysfrag;
	return (error);
}