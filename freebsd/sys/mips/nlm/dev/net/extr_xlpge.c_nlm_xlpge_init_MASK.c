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
struct nlm_xlpge_softc {int /*<<< orphan*/  xlpge_callout; scalar_t__ mii_bus; struct ifnet* xlpge_if; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlm_xlpge_softc*) ; 
 struct mii_data* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct mii_data*) ; 
 int /*<<< orphan*/  nlm_mii_pollstat ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_xlpge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_xlpge_softc*) ; 

__attribute__((used)) static void
FUNC5(void *addr)
{
	struct nlm_xlpge_softc *sc;
	struct ifnet   *ifp;
	struct mii_data *mii = NULL;

	sc = (struct nlm_xlpge_softc *)addr;
	ifp = sc->xlpge_if;

	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		return;

	if (sc->mii_bus) {
		mii = FUNC1(sc->mii_bus);
		FUNC2(mii);
	}

	FUNC3(sc);
	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC4(sc);

	/* start the callout */
	FUNC0(&sc->xlpge_callout, hz, nlm_mii_pollstat, sc);
}