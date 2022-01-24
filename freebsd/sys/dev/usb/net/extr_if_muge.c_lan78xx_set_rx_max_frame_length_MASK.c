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
struct muge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_MAC_RX ; 
 int ETH_MAC_RX_EN_ ; 
 int ETH_MAC_RX_MAX_FR_SIZE_MASK_ ; 
 int ETH_MAC_RX_MAX_FR_SIZE_SHIFT_ ; 
 int FUNC0 (struct muge_softc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct muge_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct muge_softc *sc, int size)
{
	int err = 0;
	uint32_t buf;
	bool rxenabled;

	/* First we have to disable rx before changing the length. */
	err = FUNC0(sc, ETH_MAC_RX, &buf);
	rxenabled = ((buf & ETH_MAC_RX_EN_) != 0);

	if (rxenabled) {
		buf &= ~ETH_MAC_RX_EN_;
		err = FUNC1(sc, ETH_MAC_RX, buf);
	}

	/* Setting max frame length. */
	buf &= ~ETH_MAC_RX_MAX_FR_SIZE_MASK_;
	buf |= (((size + 4) << ETH_MAC_RX_MAX_FR_SIZE_SHIFT_) &
	    ETH_MAC_RX_MAX_FR_SIZE_MASK_);
	err = FUNC1(sc, ETH_MAC_RX, buf);

	/* If it were enabled before, we enable it back. */

	if (rxenabled) {
		buf |= ETH_MAC_RX_EN_;
		err = FUNC1(sc, ETH_MAC_RX, buf);
	}

	return (0);
}