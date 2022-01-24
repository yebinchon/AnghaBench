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
struct mwl_softc {int sc_csapending; int /*<<< orphan*/  sc_mh; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_csa_count; int /*<<< orphan*/  ic_csa_newchan; struct mwl_softc* ic_softc; } ;
typedef  int /*<<< orphan*/  MWL_HAL_CHANNEL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct mwl_softc *sc = ic->ic_softc;
	MWL_HAL_CHANNEL hchan;

	if (sc->sc_csapending)
		return;

	FUNC1(&hchan, ic->ic_csa_newchan);
	/* 1 =>'s quiet channel */
	FUNC0(sc->sc_mh, &hchan, 1, ic->ic_csa_count);
	sc->sc_csapending = 1;
}