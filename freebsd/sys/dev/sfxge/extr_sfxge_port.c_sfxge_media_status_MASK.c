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
struct TYPE_2__ {size_t link_mode; } ;
struct sfxge_softc {TYPE_1__ port; int /*<<< orphan*/  enp; } ;
struct ifnet {struct sfxge_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_active; int /*<<< orphan*/  ifm_status; } ;
typedef  size_t efx_phy_media_type_t ;
typedef  size_t efx_link_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int /*<<< orphan*/  IFM_ETHER ; 
 int /*<<< orphan*/  FUNC0 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*) ; 
 scalar_t__ FUNC2 (struct sfxge_softc*) ; 
 scalar_t__ FUNC3 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ ** sfxge_link_mode ; 
 int /*<<< orphan*/  FUNC5 (struct sfxge_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct sfxge_softc *sc;
	efx_phy_media_type_t medium_type;
	efx_link_mode_t mode;

	sc = ifp->if_softc;
	FUNC0(sc);

	ifmr->ifm_status = IFM_AVALID;
	ifmr->ifm_active = IFM_ETHER;

	if (FUNC3(sc) && FUNC2(sc)) {
		ifmr->ifm_status |= IFM_ACTIVE;

		FUNC4(sc->enp, &medium_type);
		mode = sc->port.link_mode;
		ifmr->ifm_active |= sfxge_link_mode[medium_type][mode];
		ifmr->ifm_active |= FUNC5(sc);
	}

	FUNC1(sc);
}