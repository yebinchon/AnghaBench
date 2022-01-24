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
struct bwn_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_txpwr ) (struct bwn_mac*) ;} ;
struct bwn_mac {scalar_t__ mac_status; TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 scalar_t__ BWN_MAC_STATUS_STARTED ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC3(void *arg, int npending)
{
	struct bwn_mac *mac = arg;
	struct bwn_softc *sc;

	if (mac == NULL)
		return;

	sc = mac->mac_sc;

	FUNC0(sc);
	if (mac->mac_status >= BWN_MAC_STATUS_STARTED &&
	    mac->mac_phy.set_txpwr != NULL)
		mac->mac_phy.set_txpwr(mac);
	FUNC1(sc);
}