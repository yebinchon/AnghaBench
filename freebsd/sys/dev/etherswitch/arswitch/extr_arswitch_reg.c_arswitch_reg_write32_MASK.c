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
typedef  int uint16_t ;
struct arswitch_softc {scalar_t__ mii_lo_first; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct arswitch_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int phy, int reg, uint32_t value)
{
	struct arswitch_softc *sc;
	int r;
	uint16_t lo, hi;

	sc = FUNC2(dev);
	lo = value & 0xffff;
	hi = (uint16_t) (value >> 16);

	if (sc->mii_lo_first) {
		r = FUNC0(FUNC1(dev),
		    phy, reg, lo);
		r |= FUNC0(FUNC1(dev),
		    phy, reg + 1, hi);
	} else {
		r = FUNC0(FUNC1(dev),
		    phy, reg + 1, hi);
		r |= FUNC0(FUNC1(dev),
		    phy, reg, lo);
	}

	return r;
}