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
typedef  int uint8_t ;
struct TYPE_2__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_phy {int chan; int rf_ver; int rf_rev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int BHND_BFL_ADCDIV ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int) ; 

void
FUNC4(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	struct bwn_softc *sc = mac->mac_sc;
	uint8_t old = phy->chan;

	if (!(sc->sc_board_info.board_flags & BHND_BFL_ADCDIV))
		return;

	FUNC1(mac);
	FUNC2(mac);
	if ((phy->rf_ver == 0x2050) && (phy->rf_rev == 8)) {
		FUNC3(mac, (old >= 8) ? 1 : 13);
		FUNC3(mac, old);
	}
	FUNC0(mac);
}