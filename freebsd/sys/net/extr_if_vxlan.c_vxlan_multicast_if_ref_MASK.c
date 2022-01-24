#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vxlan_softc {TYPE_2__* vxl_im6o; TYPE_1__* vxl_im4o; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {struct ifnet* im6o_multicast_ifp; } ;
struct TYPE_3__ {struct ifnet* imo_multicast_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 

__attribute__((used)) static struct ifnet *
FUNC2(struct vxlan_softc *sc, int ipv4)
{
	struct ifnet *ifp;

	FUNC0(sc);

	if (ipv4 && sc->vxl_im4o != NULL)
		ifp = sc->vxl_im4o->imo_multicast_ifp;
	else if (!ipv4 && sc->vxl_im6o != NULL)
		ifp = sc->vxl_im6o->im6o_multicast_ifp;
	else
		ifp = NULL;

	if (ifp != NULL)
		FUNC1(ifp);

	return (ifp);
}