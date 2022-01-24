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
typedef  int /*<<< orphan*/  uint32_t ;
struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {scalar_t__ ext_lna_2g; } ;

/* Variables and functions */
 int /*<<< orphan*/  R12A_CCK_CHECK ; 
 int /*<<< orphan*/  R12A_CCK_RX_PATH ; 
 int /*<<< orphan*/  R12A_OFDMCCK_EN ; 
 int R12A_OFDMCCK_EN_CCK ; 
 int R12A_OFDMCCK_EN_OFDM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int R12A_RFE_PINMUX_LNA_MASK ; 
 int R12A_RFE_PINMUX_PA_A_MASK ; 
 int /*<<< orphan*/  R12A_TX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct rtwn_softc *sc, uint32_t basicrates)
{
	struct r12a_softc *rs = sc->sc_priv;

	/* Enable CCK / OFDM. */
	FUNC4(sc, R12A_OFDMCCK_EN,
	    0, R12A_OFDMCCK_EN_CCK | R12A_OFDMCCK_EN_OFDM);

	/* Turn off RF PA and LNA. */
	FUNC4(sc, FUNC1(0),
	    R12A_RFE_PINMUX_LNA_MASK, 0x7000);
	FUNC4(sc, FUNC1(0),
	    R12A_RFE_PINMUX_PA_A_MASK, 0x70);

	if (rs->ext_lna_2g) {
		/* Turn on 2.4 GHz external LNA. */
		FUNC4(sc, FUNC0(0), 0, 0x00100000);
		FUNC4(sc, FUNC0(0), 0x00400000, 0);
		FUNC4(sc, FUNC1(0), 0x05, 0x02);
		FUNC4(sc, FUNC1(0), 0x0500, 0x0200);
	} else {
		/* Bypass 2.4 GHz external LNA. */
		FUNC3(sc);
	}

	/* Select AGC table. */
	FUNC4(sc, FUNC2(0), 0x0f00, 0);

	FUNC4(sc, R12A_TX_PATH, 0xf0, 0x10);
	FUNC4(sc, R12A_CCK_RX_PATH, 0x0f000000, 0x01000000);

	/* Write basic rates. */
	FUNC5(sc, basicrates);

	FUNC6(sc, R12A_CCK_CHECK, 0);
}