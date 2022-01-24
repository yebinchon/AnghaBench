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
struct mii_data {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;
struct bge_softc {int bge_flags; int /*<<< orphan*/  bge_miibus; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int BGE_FLAG_TBI ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*) ; 
 int BGE_MACMODE_HALF_DUPLEX ; 
 int BGE_MACSTAT_TBI_PCS_SYNCHED ; 
 int /*<<< orphan*/  BGE_MAC_MODE ; 
 int /*<<< orphan*/  BGE_MAC_STS ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int FUNC2 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IFM_1000_SX ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int /*<<< orphan*/  IFM_ETHER ; 
 int /*<<< orphan*/  IFM_FDX ; 
 int /*<<< orphan*/  IFM_HDX ; 
 int /*<<< orphan*/  IFM_NONE ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct bge_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC7(if_t ifp, struct ifmediareq *ifmr)
{
	struct bge_softc *sc = FUNC5(ifp);
	struct mii_data *mii;

	FUNC0(sc);

	if ((FUNC4(ifp) & IFF_UP) == 0) {
		FUNC1(sc);
		return;
	}
	if (sc->bge_flags & BGE_FLAG_TBI) {
		ifmr->ifm_status = IFM_AVALID;
		ifmr->ifm_active = IFM_ETHER;
		if (FUNC2(sc, BGE_MAC_STS) &
		    BGE_MACSTAT_TBI_PCS_SYNCHED)
			ifmr->ifm_status |= IFM_ACTIVE;
		else {
			ifmr->ifm_active |= IFM_NONE;
			FUNC1(sc);
			return;
		}
		ifmr->ifm_active |= IFM_1000_SX;
		if (FUNC2(sc, BGE_MAC_MODE) & BGE_MACMODE_HALF_DUPLEX)
			ifmr->ifm_active |= IFM_HDX;
		else
			ifmr->ifm_active |= IFM_FDX;
		FUNC1(sc);
		return;
	}

	mii = FUNC3(sc->bge_miibus);
	FUNC6(mii);
	ifmr->ifm_active = mii->mii_media_active;
	ifmr->ifm_status = mii->mii_media_status;

	FUNC1(sc);
}