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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_OFDM0_ECCATHRESHOLD ; 
 int /*<<< orphan*/  R92C_OFDM0_RXIQEXTANTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(struct rtwn_softc *sc, uint16_t tx[2],
    uint16_t rx[2])
{
	uint32_t reg, val, x;
	long y, tx_c;

	if (tx[0] == 0xff || tx[1] == 0xff)
		return;

	reg = FUNC3(sc, FUNC2(0));
	val = ((reg >> 22) & 0x3ff);
	x = tx[0];
	if (x & 0x00000200)
		x |= 0xfffffc00;
	reg = (((x * val) >> 8) & 0x3ff);
	FUNC4(sc, FUNC2(0), 0x3ff, reg);
	FUNC4(sc, R92C_OFDM0_ECCATHRESHOLD, 0x80000000,
	    ((x * val) & 0x80) << 24);

	y = tx[1];
	if (y & 0x00000200)
		y |= 0xfffffc00;
	tx_c = (y * val) >> 8;
	FUNC4(sc, FUNC1(0), 0xf0000000,
	    (tx_c & 0x3c0) << 22);
	FUNC4(sc, FUNC2(0), 0x003f0000,
	    (tx_c & 0x3f) << 16);
	FUNC4(sc, R92C_OFDM0_ECCATHRESHOLD, 0x20000000,
	    ((y * val) & 0x80) << 22);

	if (rx[0] == 0xff || rx[1] == 0xff)
		return;

	FUNC4(sc, FUNC0(0), 0x3ff,
	    rx[0] & 0x3ff);
	FUNC4(sc, FUNC0(0), 0xfc00,
	    (rx[1] & 0x3f) << 10);
	FUNC4(sc, R92C_OFDM0_RXIQEXTANTA, 0xf0000000,
	    (rx[1] & 0x3c0) << 22);
}