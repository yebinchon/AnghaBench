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
struct r12a_softc {int rfe_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  R12A_ANTSEL_SW ; 
 int /*<<< orphan*/  R12A_BW_INDICATION ; 
 int /*<<< orphan*/  R12A_CCK_CHECK ; 
 int /*<<< orphan*/  R12A_CCK_RX_PATH ; 
 int /*<<< orphan*/  R12A_OFDMCCK_EN ; 
 int R12A_OFDMCCK_EN_CCK ; 
 int R12A_OFDMCCK_EN_OFDM ; 
 int /*<<< orphan*/  R12A_PWED_TH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  R12A_TXAGC_TABLE_SELECT ; 
 int /*<<< orphan*/  R12A_TX_PATH ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC7(struct rtwn_softc *sc, uint32_t basicrates)
{
	struct r12a_softc *rs = sc->sc_priv;

	/* Enable CCK / OFDM. */
	FUNC2(sc, R12A_OFDMCCK_EN,
	    0, R12A_OFDMCCK_EN_CCK | R12A_OFDMCCK_EN_OFDM);

	FUNC2(sc, R12A_BW_INDICATION, 0x02, 0x01);
	FUNC2(sc, R12A_PWED_TH, 0x3e000, 0x2e000);

	/* Select AGC table. */
	FUNC2(sc, R12A_TXAGC_TABLE_SELECT, 0x03, 0);

	switch (rs->rfe_type) {
	case 0:
	case 1:
	case 2:
		FUNC3(sc, FUNC1(0), 0x77777777);
		FUNC3(sc, FUNC1(1), 0x77777777);
		FUNC2(sc, FUNC0(0), 0x3ff00000, 0);
		FUNC2(sc, FUNC0(1), 0x3ff00000, 0);
		break;
	case 3:
		FUNC3(sc, FUNC1(0), 0x54337770);
		FUNC3(sc, FUNC1(1), 0x54337770);
		FUNC2(sc, FUNC0(0), 0x3ff00000, 0x01000000);
		FUNC2(sc, FUNC0(1), 0x3ff00000, 0x01000000);
		FUNC2(sc, R12A_ANTSEL_SW, 0x0303, 0x01);
		break;
	case 4:
		FUNC3(sc, FUNC1(0), 0x77777777);
		FUNC3(sc, FUNC1(1), 0x77777777);
		FUNC2(sc, FUNC0(0), 0x3ff00000, 0x00100000);
		FUNC2(sc, FUNC0(1), 0x3ff00000, 0x00100000);
		break;
	case 5:
		FUNC6(sc, FUNC1(0) + 2, 0x77);
		FUNC3(sc, FUNC1(1), 0x77777777);
		FUNC5(sc, FUNC0(0) + 3, 0x01, 0);
		FUNC2(sc, FUNC0(1), 0x3ff00000, 0);
		break;
	default:
		break;
	}

	FUNC2(sc, R12A_TX_PATH, 0xf0, 0x10);
	FUNC2(sc, R12A_CCK_RX_PATH, 0x0f000000, 0x01000000);

	/* Write basic rates. */
	FUNC4(sc, basicrates);

	FUNC6(sc, R12A_CCK_CHECK, 0);
}