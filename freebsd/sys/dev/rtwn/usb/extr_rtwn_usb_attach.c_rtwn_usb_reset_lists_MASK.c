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
struct rtwn_usb_softc {int /*<<< orphan*/  uc_tx_pending; int /*<<< orphan*/  uc_tx_active; } ;
struct rtwn_softc {scalar_t__ qfullmsk; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 struct rtwn_usb_softc* FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_usb_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_usb_softc*,int /*<<< orphan*/ *,struct ieee80211vap*) ; 

__attribute__((used)) static void
FUNC4(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
	struct rtwn_usb_softc *uc = FUNC1(sc);

	FUNC0(sc);

	FUNC3(uc, &uc->uc_tx_active, vap);
	FUNC3(uc, &uc->uc_tx_pending, vap);
	if (vap == NULL) {
		FUNC2(uc);
		sc->qfullmsk = 0;
	}
}