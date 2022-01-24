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
struct vxlan_softc {int /*<<< orphan*/ * vxl_im6o; int /*<<< orphan*/ * vxl_im4o; scalar_t__ vxl_mc_ifindex; int /*<<< orphan*/ * vxl_mc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct vxlan_softc *sc)
{

	if (sc->vxl_mc_ifp != NULL) {
		FUNC1(sc->vxl_mc_ifp);
		sc->vxl_mc_ifp = NULL;
		sc->vxl_mc_ifindex = 0;
	}

	if (sc->vxl_im4o != NULL) {
		FUNC0(sc->vxl_im4o, M_VXLAN);
		sc->vxl_im4o = NULL;
	}

	if (sc->vxl_im6o != NULL) {
		FUNC0(sc->vxl_im6o, M_VXLAN);
		sc->vxl_im6o = NULL;
	}
}