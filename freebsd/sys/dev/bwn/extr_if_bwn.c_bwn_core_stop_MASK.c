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
struct bwn_softc {scalar_t__ sc_watchdog_timer; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_task_ch; int /*<<< orphan*/  sc_rfswitch_ch; } ;
struct bwn_mac {scalar_t__ mac_status; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  BWN_INTR_MASK ; 
 scalar_t__ BWN_MAC_STATUS_INITED ; 
 scalar_t__ BWN_MAC_STATUS_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;

	FUNC0(sc);

	if (mac->mac_status < BWN_MAC_STATUS_STARTED)
		return;

	FUNC4(&sc->sc_rfswitch_ch);
	FUNC4(&sc->sc_task_ch);
	FUNC4(&sc->sc_watchdog_ch);
	sc->sc_watchdog_timer = 0;
	FUNC2(mac, BWN_INTR_MASK, 0);
	FUNC1(mac, BWN_INTR_MASK);
	FUNC3(mac);

	mac->mac_status = BWN_MAC_STATUS_INITED;
}