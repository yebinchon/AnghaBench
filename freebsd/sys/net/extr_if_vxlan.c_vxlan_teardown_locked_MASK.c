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
struct vxlan_softc {int vxl_flags; int vxl_vso_mc_index; scalar_t__ vxl_refcnt; int /*<<< orphan*/  vxl_callout; int /*<<< orphan*/  vxl_lock; struct vxlan_socket* vxl_sock; struct ifnet* vxl_ifp; } ;
struct vxlan_socket {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; int /*<<< orphan*/  if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VXLAN_FLAG_TEARDOWN ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vxlan_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vxlan_socket*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vxlan_socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct vxlan_socket*,struct vxlan_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct vxlan_softc*) ; 

__attribute__((used)) static void
FUNC13(struct vxlan_softc *sc)
{
	struct ifnet *ifp;
	struct vxlan_socket *vso;

	ifp = sc->vxl_ifp;

	FUNC1(sc);
	FUNC0(sc->vxl_flags & VXLAN_FLAG_TEARDOWN);

	ifp->if_flags &= ~IFF_UP;
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC5(&sc->vxl_callout);
	vso = sc->vxl_sock;
	sc->vxl_sock = NULL;

	FUNC3(sc);
	FUNC6(ifp, LINK_STATE_DOWN);

	if (vso != NULL) {
		FUNC11(vso, sc);

		if (sc->vxl_vso_mc_index != -1) {
			FUNC9(vso,
			    sc->vxl_vso_mc_index);
			sc->vxl_vso_mc_index = -1;
		}
	}

	FUNC2(sc);
	while (sc->vxl_refcnt != 0)
		FUNC7(sc, &sc->vxl_lock, 0, "vxldrn", hz);
	FUNC3(sc);

	FUNC4(&sc->vxl_callout);

	FUNC8(sc);
	if (vso != NULL)
		FUNC10(vso);

	FUNC12(sc);
}