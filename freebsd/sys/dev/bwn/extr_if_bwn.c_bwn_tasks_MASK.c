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
struct bwn_softc {int /*<<< orphan*/  sc_task_ch; } ;
struct bwn_mac {scalar_t__ mac_status; int mac_task_state; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 scalar_t__ BWN_MAC_STATUS_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,void (*) (void*),struct bwn_mac*) ; 
 int hz ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct bwn_mac *mac = arg;
	struct bwn_softc *sc = mac->mac_sc;

	FUNC0(sc);
	if (mac->mac_status != BWN_MAC_STATUS_STARTED)
		return;

	if (mac->mac_task_state % 4 == 0)
		FUNC3(mac);
	if (mac->mac_task_state % 2 == 0)
		FUNC2(mac);
	FUNC1(mac);

	mac->mac_task_state++;
	FUNC4(&sc->sc_task_ch, hz * 15, bwn_tasks, mac);
}