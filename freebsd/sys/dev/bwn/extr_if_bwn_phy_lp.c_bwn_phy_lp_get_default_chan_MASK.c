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
typedef  int uint32_t ;
struct ieee80211com {int /*<<< orphan*/  ic_curchan; } ;
struct bwn_softc {struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC1(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	struct ieee80211com *ic = &sc->sc_ic;

	return (FUNC0(ic->ic_curchan) ? 1 : 36);
}