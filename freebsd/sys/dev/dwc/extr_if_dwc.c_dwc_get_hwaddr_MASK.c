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
typedef  char uint8_t ;
typedef  int uint32_t ;
struct dwc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct dwc_softc *sc, uint8_t *hwaddr)
{
	uint32_t hi, lo, rnd;

	/*
	 * Try to recover a MAC address from the running hardware. If there's
	 * something non-zero there, assume the bootloader did the right thing
	 * and just use it.
	 *
	 * Otherwise, set the address to a convenient locally assigned address,
	 * 'bsd' + random 24 low-order bits.  'b' is 0x62, which has the locally
	 * assigned bit set, and the broadcast/multicast bit clear.
	 */
	lo = FUNC2(sc, FUNC1(0));
	hi = FUNC2(sc, FUNC0(0)) & 0xffff;
	if ((lo != 0xffffffff) || (hi != 0xffff)) {
		hwaddr[0] = (lo >>  0) & 0xff;
		hwaddr[1] = (lo >>  8) & 0xff;
		hwaddr[2] = (lo >> 16) & 0xff;
		hwaddr[3] = (lo >> 24) & 0xff;
		hwaddr[4] = (hi >>  0) & 0xff;
		hwaddr[5] = (hi >>  8) & 0xff;
	} else {
		rnd = FUNC3() & 0x00ffffff;
		hwaddr[0] = 'b';
		hwaddr[1] = 's';
		hwaddr[2] = 'd';
		hwaddr[3] = rnd >> 16;
		hwaddr[4] = rnd >>  8;
		hwaddr[5] = rnd >>  0;
	}

	return (0);
}