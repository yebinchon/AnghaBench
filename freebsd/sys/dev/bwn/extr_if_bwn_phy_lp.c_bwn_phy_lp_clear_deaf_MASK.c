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
typedef  scalar_t__ uint8_t ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_phy_lp {scalar_t__ plp_crssys_off; scalar_t__ plp_crsusr_off; } ;
struct TYPE_2__ {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_softc* mac_sc; TYPE_1__ mac_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PHY_CRSGAIN_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, uint8_t user)
{
	struct bwn_phy_lp *plp = &mac->mac_phy.phy_lp;
	struct bwn_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;

	if (user)
		plp->plp_crsusr_off = 0;
	else
		plp->plp_crssys_off = 0;

	if (plp->plp_crsusr_off || plp->plp_crssys_off)
		return;

	if (FUNC1(ic->ic_curchan))
		FUNC0(mac, BWN_PHY_CRSGAIN_CTL, 0xff1f, 0x60);
	else
		FUNC0(mac, BWN_PHY_CRSGAIN_CTL, 0xff1f, 0x20);
}