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
struct msk_softc {int msk_num_port; int /*<<< orphan*/  msk_pflags; TYPE_2__** msk_if; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {TYPE_1__* msk_ifp; } ;
struct TYPE_3__ {int if_flags; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  MSK_FLAG_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (struct msk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct msk_softc*) ; 
 int /*<<< orphan*/  PCI_OUR_REG_3 ; 
 struct msk_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct msk_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct msk_softc *sc;
	int i;

	sc = FUNC3(dev);

	FUNC1(sc);

	FUNC0(sc, PCI_OUR_REG_3, 0);
	FUNC5(sc);
	for (i = 0; i < sc->msk_num_port; i++) {
		if (sc->msk_if[i] != NULL && sc->msk_if[i]->msk_ifp != NULL &&
		    ((sc->msk_if[i]->msk_ifp->if_flags & IFF_UP) != 0)) {
			sc->msk_if[i]->msk_ifp->if_drv_flags &=
			    ~IFF_DRV_RUNNING;
			FUNC4(sc->msk_if[i]);
		}
	}
	sc->msk_pflags &= ~MSK_FLAG_SUSPEND;

	FUNC2(sc);

	return (0);
}