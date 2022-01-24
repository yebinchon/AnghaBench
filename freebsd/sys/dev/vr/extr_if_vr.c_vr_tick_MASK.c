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
struct TYPE_3__ {int /*<<< orphan*/  num_restart; } ;
struct vr_softc {int vr_flags; int /*<<< orphan*/  vr_stat_callout; int /*<<< orphan*/  vr_dev; int /*<<< orphan*/  vr_miibus; TYPE_2__* vr_ifp; TYPE_1__ vr_stat; } ;
struct mii_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int VR_F_LINK ; 
 int VR_F_RESTART ; 
 int /*<<< orphan*/  FUNC0 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct vr_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vr_softc*) ; 

__attribute__((used)) static void
FUNC8(void *xsc)
{
	struct vr_softc		*sc;
	struct mii_data		*mii;

	sc = (struct vr_softc *)xsc;

	FUNC0(sc);

	if ((sc->vr_flags & VR_F_RESTART) != 0) {
		FUNC3(sc->vr_dev, "restarting\n");
		sc->vr_stat.num_restart++;
		sc->vr_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC5(sc);
		sc->vr_flags &= ~VR_F_RESTART;
	}

	mii = FUNC2(sc->vr_miibus);
	FUNC4(mii);
	if ((sc->vr_flags & VR_F_LINK) == 0)
		FUNC6(sc->vr_dev);
	FUNC7(sc);
	FUNC1(&sc->vr_stat_callout, hz, vr_tick, sc);
}