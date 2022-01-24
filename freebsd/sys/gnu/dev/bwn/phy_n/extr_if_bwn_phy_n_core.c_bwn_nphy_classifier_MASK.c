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
typedef  int uint16_t ;
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_CLASSCTL ; 
 int BWN_NPHY_CLASSCTL_CCKEN ; 
 int BWN_NPHY_CLASSCTL_OFDMEN ; 
 int BWN_NPHY_CLASSCTL_WAITEDEN ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*) ; 

__attribute__((used)) static uint16_t FUNC5(struct bwn_mac *mac, uint16_t mask, uint16_t val)
{
	struct bwn_softc *sc = mac->mac_sc;
	uint16_t tmp;

	if (FUNC2(sc->sc_dev) == 16)
		FUNC4(mac);

	tmp = FUNC0(mac, BWN_NPHY_CLASSCTL);
	tmp &= (BWN_NPHY_CLASSCTL_CCKEN | BWN_NPHY_CLASSCTL_OFDMEN |
		BWN_NPHY_CLASSCTL_WAITEDEN);
	tmp &= ~mask;
	tmp |= (val & mask);
	FUNC1(mac, BWN_NPHY_CLASSCTL, 0xFFF8, tmp);

	if (FUNC2(sc->sc_dev) == 16)
		FUNC3(mac);

	return tmp;
}