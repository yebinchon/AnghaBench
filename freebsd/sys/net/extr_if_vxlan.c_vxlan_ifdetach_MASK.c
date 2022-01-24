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
struct vxlan_softc_head {int dummy; } ;
struct vxlan_softc {int vxl_flags; struct ifnet* vxl_mc_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vxlan_softc_head*,struct vxlan_softc*,int /*<<< orphan*/ ) ; 
 int VXLAN_FLAG_TEARDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  vxl_ifdetach_list ; 

__attribute__((used)) static void
FUNC3(struct vxlan_softc *sc, struct ifnet *ifp,
    struct vxlan_softc_head *list)
{

	FUNC1(sc);

	if (sc->vxl_mc_ifp != ifp)
		goto out;
	if (sc->vxl_flags & VXLAN_FLAG_TEARDOWN)
		goto out;

	sc->vxl_flags |= VXLAN_FLAG_TEARDOWN;
	FUNC0(list, sc, vxl_ifdetach_list);

out:
	FUNC2(sc);
}