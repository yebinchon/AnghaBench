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
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct bwn_txgain {int member_0; int member_1; int member_2; int /*<<< orphan*/  member_3; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,struct bwn_txgain*) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac)
{
	struct bwn_txgain gain_2ghz = { 4, 12, 12, 0 };
	struct bwn_txgain gain_5ghz = { 7, 15, 14, 0 };
	struct bwn_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC2(mac,
	    FUNC0(ic->ic_curchan) ? &gain_2ghz : &gain_5ghz);
	FUNC1(mac, 150);
}