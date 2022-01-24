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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rtentry {struct net_device* rt_ifp; } ;
struct net_device {int /*<<< orphan*/  if_vnet; } ;
typedef  int /*<<< orphan*/  src_tmp ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 struct rtentry* FUNC9 (struct sockaddr*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct net_device *net_dev,
				  const struct sockaddr_in *dst_addr,
				  const struct sockaddr_in *src_addr)
{
#ifdef INET
	struct sockaddr_in src_tmp = *src_addr;
	__be32 daddr = dst_addr->sin_addr.s_addr,
	       saddr = src_addr->sin_addr.s_addr;
	struct net_device *dst_dev;
	struct rtentry *rte;
	bool ret;

	if (ipv4_is_multicast(saddr) || ipv4_is_lbcast(saddr) ||
	    ipv4_is_lbcast(daddr) || ipv4_is_zeronet(saddr) ||
	    ipv4_is_zeronet(daddr) || ipv4_is_loopback(daddr) ||
	    ipv4_is_loopback(saddr))
		return false;

	dst_dev = ip_dev_find(net_dev->if_vnet, daddr);
	if (dst_dev != net_dev) {
		if (dst_dev != NULL)
			dev_put(dst_dev);
		return false;
	}
	dev_put(dst_dev);

	/*
	 * Check for loopback.
	 */
	if (saddr == daddr)
		return true;

	/*
	 * Make sure the socket address length field
	 * is set, else rtalloc1() will fail.
	 */
	src_tmp.sin_len = sizeof(src_tmp);

	CURVNET_SET(net_dev->if_vnet);
	rte = rtalloc1((struct sockaddr *)&src_tmp, 1, 0);
	if (rte != NULL) {
		ret = (rte->rt_ifp == net_dev);
		RTFREE_LOCKED(rte);
	} else {
		ret = false;
	}
	CURVNET_RESTORE();
	return ret;
#else
	return false;
#endif
}