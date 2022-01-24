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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct rum_softc {int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int iv_opmode; TYPE_1__* iv_bss; } ;
struct TYPE_2__ {int ni_intval; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  IEEE80211_M_HOSTAP 130 
#define  IEEE80211_M_IBSS 129 
#define  IEEE80211_M_STA 128 
 int RT2573_BCN_TX_EN ; 
 int RT2573_TBTT_TIMER_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2573_TSF_SYNC_MODE_HOSTAP ; 
 int /*<<< orphan*/  RT2573_TSF_SYNC_MODE_IBSS ; 
 int /*<<< orphan*/  RT2573_TSF_SYNC_MODE_STA ; 
 int RT2573_TSF_TIMER_EN ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR10 ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR9 ; 
 struct ieee80211vap* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct rum_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rum_softc*,int) ; 
 scalar_t__ FUNC5 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct rum_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC1(&ic->ic_vaps);
	uint32_t tmp;
	uint16_t bintval;

	if (vap->iv_opmode != IEEE80211_M_STA) {
		/*
		 * Change default 16ms TBTT adjustment to 8ms.
		 * Must be done before enabling beacon generation.
		 */
		if (FUNC5(sc, RT2573_TXRX_CSR10, 1 << 12 | 8) != 0)
			return EIO;
	}

	tmp = FUNC3(sc, RT2573_TXRX_CSR9) & 0xff000000;

	/* set beacon interval (in 1/16ms unit) */
	bintval = vap->iv_bss->ni_intval;
	tmp |= bintval * 16;
	tmp |= RT2573_TSF_TIMER_EN | RT2573_TBTT_TIMER_EN;

	switch (vap->iv_opmode) {
	case IEEE80211_M_STA:
		/*
		 * Local TSF is always updated with remote TSF on beacon
		 * reception.
		 */
		tmp |= FUNC0(RT2573_TSF_SYNC_MODE_STA);
		break;
	case IEEE80211_M_IBSS:
		/*
		 * Local TSF is updated with remote TSF on beacon reception
		 * only if the remote TSF is greater than local TSF.
		 */
		tmp |= FUNC0(RT2573_TSF_SYNC_MODE_IBSS);
		tmp |= RT2573_BCN_TX_EN;
		break;
	case IEEE80211_M_HOSTAP:
		/* SYNC with nobody */
		tmp |= FUNC0(RT2573_TSF_SYNC_MODE_HOSTAP);
		tmp |= RT2573_BCN_TX_EN;
		break;
	default:
		FUNC2(sc->sc_dev,
		    "Enabling TSF failed. undefined opmode %d\n",
		    vap->iv_opmode);
		return EINVAL;
	}

	if (FUNC5(sc, RT2573_TXRX_CSR9, tmp) != 0)
		return EIO;

	/* refresh current sleep time */
	return (FUNC4(sc, bintval));
}