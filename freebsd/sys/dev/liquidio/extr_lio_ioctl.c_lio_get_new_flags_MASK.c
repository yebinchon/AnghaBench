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
struct ifnet {int dummy; } ;
typedef  enum lio_ifflags { ____Placeholder_lio_ifflags } lio_ifflags ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 int LIO_IFFLAG_ALLMULTI ; 
 int LIO_IFFLAG_BROADCAST ; 
 int LIO_IFFLAG_MULTICAST ; 
 int LIO_IFFLAG_PROMISC ; 
 int LIO_IFFLAG_UNICAST ; 
 scalar_t__ LIO_MAX_MULTICAST_ADDR ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 int FUNC1 (struct ifnet*) ; 

__attribute__((used)) static inline enum lio_ifflags
FUNC2(struct ifnet *ifp)
{
	enum lio_ifflags f = LIO_IFFLAG_UNICAST;

	if (FUNC1(ifp) & IFF_PROMISC)
		f |= LIO_IFFLAG_PROMISC;

	if (FUNC1(ifp) & IFF_ALLMULTI)
		f |= LIO_IFFLAG_ALLMULTI;

	if (FUNC1(ifp) & IFF_MULTICAST) {
		f |= LIO_IFFLAG_MULTICAST;

		/*
		 * Accept all multicast addresses if there are more than we
		 * can handle
		 */
		if (FUNC0(ifp) > LIO_MAX_MULTICAST_ADDR)
			f |= LIO_IFFLAG_ALLMULTI;
	}
	if (FUNC1(ifp) & IFF_BROADCAST)
		f |= LIO_IFFLAG_BROADCAST;

	return (f);
}