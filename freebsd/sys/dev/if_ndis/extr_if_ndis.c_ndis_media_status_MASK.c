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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  txrate ;
struct ndis_softc {int dummy; } ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ifmediareq {int dummy; } ;
struct ieee80211vap {TYPE_2__* iv_bss; TYPE_1__* iv_ic; } ;
struct TYPE_4__ {int ni_txrate; } ;
struct TYPE_3__ {struct ndis_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ndis_softc*) ; 
 int /*<<< orphan*/  OID_GEN_LINK_SPEED ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,struct ifmediareq*) ; 
 scalar_t__ FUNC2 (struct ndis_softc*,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp, struct ifmediareq *imr)
{
	struct ieee80211vap *vap = ifp->if_softc;
	struct ndis_softc *sc = vap->iv_ic->ic_softc;
	uint32_t txrate;
	int len;

	if (!FUNC0(sc))
		return;

	len = sizeof(txrate);
	if (FUNC2(sc, OID_GEN_LINK_SPEED, &txrate, &len) == 0)
		vap->iv_bss->ni_txrate = txrate / 5000;
	FUNC1(ifp, imr);
}