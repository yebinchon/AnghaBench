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
typedef  int uint8_t ;
struct rt2860_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int RT3070_BB_LOOPBACK ; 
 int FUNC1 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int,int) ; 
 int FUNC3 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2860_softc*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct rt2860_softc *sc, uint8_t init, uint8_t target,
    uint8_t *val)
{
	uint8_t rf22, rf24;
	uint8_t bbp55_pb, bbp55_sb, delta;
	int ntries;

	/* program filter */
	rf24 = FUNC3(sc, 24);
	rf24 = (rf24 & 0xc0) | init;	/* initial filter value */
	FUNC4(sc, 24, rf24);

	/* enable baseband loopback mode */
	rf22 = FUNC3(sc, 22);
	FUNC4(sc, 22, rf22 | RT3070_BB_LOOPBACK);

	/* set power and frequency of passband test tone */
	FUNC2(sc, 24, 0x00);
	for (ntries = 0; ntries < 100; ntries++) {
		/* transmit test tone */
		FUNC2(sc, 25, 0x90);
		FUNC0(1000);
		/* read received power */
		bbp55_pb = FUNC1(sc, 55);
		if (bbp55_pb != 0)
			break;
	}
	if (ntries == 100)
		return (ETIMEDOUT);

	/* set power and frequency of stopband test tone */
	FUNC2(sc, 24, 0x06);
	for (ntries = 0; ntries < 100; ntries++) {
		/* transmit test tone */
		FUNC2(sc, 25, 0x90);
		FUNC0(1000);
		/* read received power */
		bbp55_sb = FUNC1(sc, 55);

		delta = bbp55_pb - bbp55_sb;
		if (delta > target)
			break;

		/* reprogram filter */
		rf24++;
		FUNC4(sc, 24, rf24);
	}
	if (ntries < 100) {
		if (rf24 != init)
			rf24--;	/* backtrack */
		*val = rf24;
		FUNC4(sc, 24, rf24);
	}

	/* restore initial state */
	FUNC2(sc, 24, 0x00);

	/* disable baseband loopback mode */
	rf22 = FUNC3(sc, 22);
	FUNC4(sc, 22, rf22 & ~RT3070_BB_LOOPBACK);

	return (0);
}