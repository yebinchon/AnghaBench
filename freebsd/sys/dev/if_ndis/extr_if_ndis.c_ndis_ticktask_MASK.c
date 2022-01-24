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
typedef  scalar_t__ uint8_t ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct ndis_softc {int ndis_link; scalar_t__ ndis_sts; scalar_t__ ndis_80211; int /*<<< orphan*/  ifp; struct ieee80211com ndis_ic; TYPE_2__* ndis_block; TYPE_1__* ndis_chars; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_ifp; } ;
typedef  int /*<<< orphan*/ * ndis_checkforhang_handler ;
typedef  int /*<<< orphan*/  device_object ;
struct TYPE_4__ {int /*<<< orphan*/  nmb_miniportadapterctx; } ;
struct TYPE_3__ {int /*<<< orphan*/ * nmc_checkhang_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_S_RUN ; 
 int /*<<< orphan*/  IEEE80211_S_SCAN ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_softc*) ; 
 scalar_t__ NDIS_STATUS_MEDIA_CONNECT ; 
 scalar_t__ NDIS_STATUS_MEDIA_DISCONNECT ; 
 int /*<<< orphan*/  FUNC3 (struct ndis_softc*) ; 
 struct ieee80211vap* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211vap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ndis_softc*) ; 

__attribute__((used)) static void
FUNC9(device_object *d, void *xsc)
{
	struct ndis_softc	*sc = xsc;
	ndis_checkforhang_handler hangfunc;
	uint8_t			rval;

	FUNC2(sc);
	if (!FUNC1(sc)) {
		FUNC3(sc);
		return;
	}
	FUNC3(sc);

	hangfunc = sc->ndis_chars->nmc_checkhang_func;

	if (hangfunc != NULL) {
		rval = FUNC0(hangfunc,
		    sc->ndis_block->nmb_miniportadapterctx);
		if (rval == TRUE) {
			FUNC8(sc);
			return;
		}
	}

	FUNC2(sc);
	if (sc->ndis_link == 0 &&
	    sc->ndis_sts == NDIS_STATUS_MEDIA_CONNECT) {
		sc->ndis_link = 1;
		if (sc->ndis_80211 != 0) {
			struct ieee80211com *ic = &sc->ndis_ic;
			struct ieee80211vap *vap = FUNC4(&ic->ic_vaps);

			if (vap != NULL) {
				FUNC3(sc);
				FUNC7(sc);
				FUNC5(vap, IEEE80211_S_RUN, -1);
				FUNC2(sc);
				FUNC6(vap->iv_ifp,
				    LINK_STATE_UP);
			}
		} else
			FUNC6(sc->ifp, LINK_STATE_UP);
	}

	if (sc->ndis_link == 1 &&
	    sc->ndis_sts == NDIS_STATUS_MEDIA_DISCONNECT) {
		sc->ndis_link = 0;
		if (sc->ndis_80211 != 0) {
			struct ieee80211com *ic = &sc->ndis_ic;
			struct ieee80211vap *vap = FUNC4(&ic->ic_vaps);

			if (vap != NULL) {
				FUNC3(sc);
				FUNC5(vap, IEEE80211_S_SCAN, 0);
				FUNC2(sc);
				FUNC6(vap->iv_ifp,
				    LINK_STATE_DOWN);
			}
		} else
			FUNC6(sc->ifp, LINK_STATE_DOWN);
	}

	FUNC3(sc);
}