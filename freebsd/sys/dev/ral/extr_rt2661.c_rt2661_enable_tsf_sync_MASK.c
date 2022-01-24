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
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct rt2661_softc {struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_opmode; TYPE_1__* iv_bss; } ;
struct TYPE_2__ {int ni_intval; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_STA ; 
 int FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2661_ENABLE_TBTT ; 
 int RT2661_GENERATE_BEACON ; 
 int FUNC2 (int) ; 
 int RT2661_TSF_TICKING ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR10 ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR9 ; 
 struct ieee80211vap* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct rt2661_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC3(&ic->ic_vaps);
	uint32_t tmp;

	if (vap->iv_opmode != IEEE80211_M_STA) {
		/*
		 * Change default 16ms TBTT adjustment to 8ms.
		 * Must be done before enabling beacon generation.
		 */
		FUNC1(sc, RT2661_TXRX_CSR10, 1 << 12 | 8);
	}

	tmp = FUNC0(sc, RT2661_TXRX_CSR9) & 0xff000000;

	/* set beacon interval (in 1/16ms unit) */
	tmp |= vap->iv_bss->ni_intval * 16;

	tmp |= RT2661_TSF_TICKING | RT2661_ENABLE_TBTT;
	if (vap->iv_opmode == IEEE80211_M_STA)
		tmp |= FUNC2(1);
	else
		tmp |= FUNC2(2) | RT2661_GENERATE_BEACON;

	FUNC1(sc, RT2661_TXRX_CSR9, tmp);
}