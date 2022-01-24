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
struct vxlan_softc {int /*<<< orphan*/  vxl_lock; int /*<<< orphan*/  vxl_media; } ;
struct ifnet {struct vxlan_softc* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vxlan_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vxlan_softc*) ; 

__attribute__((used)) static void
FUNC9(struct ifnet *ifp)
{
	struct vxlan_softc *sc;

	sc = ifp->if_softc;

	FUNC8(sc);

	FUNC6(sc, 1);

	FUNC0(ifp);
	FUNC2(ifp);
	FUNC3(&sc->vxl_media);

	FUNC5(sc);

	FUNC7(sc);
	FUNC4(&sc->vxl_lock);
	FUNC1(sc, M_VXLAN);
}