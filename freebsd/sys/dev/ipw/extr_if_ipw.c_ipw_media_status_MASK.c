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
struct ipw_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {TYPE_1__* iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ni_txrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_INFO_CURRENT_TX_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct ifmediareq*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ipw_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp, struct ifmediareq *imr)
{
	struct ieee80211vap *vap = ifp->if_softc;
	struct ieee80211com *ic = vap->iv_ic;
	struct ipw_softc *sc = ic->ic_softc;

	/* read current transmission rate from adapter */
	vap->iv_bss->ni_txrate = FUNC1(
	    FUNC2(sc, IPW_INFO_CURRENT_TX_RATE) & 0xf);
	FUNC0(ifp, imr);
}