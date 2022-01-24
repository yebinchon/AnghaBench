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
typedef  int uint32_t ;
struct TYPE_2__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int BHND_BFL_PACTRL ; 
 int BHND_GPIO_BOARD_PACTRL ; 
 int /*<<< orphan*/  BWN_GPIO_MASK ; 
 int /*<<< orphan*/  BWN_MACCTL ; 
 int BWN_MACCTL_GPOUT_MASK ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct bwn_mac*,int) ; 

__attribute__((used)) static int
FUNC5(struct bwn_mac *mac)
{
	struct bwn_softc	*sc;
	uint32_t		 pins;

	sc = mac->mac_sc;

	pins = 0xF;

	FUNC3(mac, BWN_MACCTL,
	    FUNC1(mac, BWN_MACCTL) & ~BWN_MACCTL_GPOUT_MASK);
	FUNC2(mac, BWN_GPIO_MASK,
	    FUNC0(mac, BWN_GPIO_MASK) | pins);

	if (sc->sc_board_info.board_flags & BHND_BFL_PACTRL) {
		/* MAC core is responsible for toggling PAREF via gpio9 */
		FUNC2(mac, BWN_GPIO_MASK,
		    FUNC0(mac, BWN_GPIO_MASK) | BHND_GPIO_BOARD_PACTRL);

		pins |= BHND_GPIO_BOARD_PACTRL;
	}

	return (FUNC4(mac, pins));
}