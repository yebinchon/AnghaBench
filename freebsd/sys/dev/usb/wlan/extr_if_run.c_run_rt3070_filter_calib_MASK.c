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
struct run_softc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct run_softc *sc, uint8_t init, uint8_t target,
    uint8_t *val)
{
	uint8_t rf22, rf24;
	uint8_t bbp55_pb, bbp55_sb, delta;
	int ntries;

	/* program filter */
	FUNC3(sc, 24, &rf24);
	rf24 = (rf24 & 0xc0) | init;	/* initial filter value */
	FUNC4(sc, 24, rf24);

	/* enable baseband loopback mode */
	FUNC3(sc, 22, &rf22);
	FUNC4(sc, 22, rf22 | 0x01);

	/* set power and frequency of passband test tone */
	FUNC1(sc, 24, 0x00);
	for (ntries = 0; ntries < 100; ntries++) {
		/* transmit test tone */
		FUNC1(sc, 25, 0x90);
		FUNC2(sc, 10);
		/* read received power */
		FUNC0(sc, 55, &bbp55_pb);
		if (bbp55_pb != 0)
			break;
	}
	if (ntries == 100)
		return (ETIMEDOUT);

	/* set power and frequency of stopband test tone */
	FUNC1(sc, 24, 0x06);
	for (ntries = 0; ntries < 100; ntries++) {
		/* transmit test tone */
		FUNC1(sc, 25, 0x90);
		FUNC2(sc, 10);
		/* read received power */
		FUNC0(sc, 55, &bbp55_sb);

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
	FUNC1(sc, 24, 0x00);

	/* disable baseband loopback mode */
	FUNC3(sc, 22, &rf22);
	FUNC4(sc, 22, rf22 & ~0x01);

	return (0);
}