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
struct rtwn_softc {int ntxchains; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_IQK_AGC_CONT ; 
 int /*<<< orphan*/  R92C_IQK_AGC_PTS ; 
 int /*<<< orphan*/  R92C_IQK_AGC_RSP ; 
 int /*<<< orphan*/  R92C_POWER_IQK_RESULT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rtwn_softc*,int) ; 

__attribute__((used)) static int
FUNC12(struct rtwn_softc *sc, int chain, uint16_t tx[2],
    uint16_t rx[2])
{
	uint32_t status;

	if (chain == 0) {	/* IQ calibration for chain 0. */
		/* IQ calibration settings for chain 0. */
		FUNC10(sc, FUNC6(0), 0x10008c1f);
		FUNC10(sc, FUNC2(0), 0x10008c1f);
		FUNC10(sc, FUNC5(0), 0x82140102);

		if (sc->ntxchains > 1) {
			FUNC10(sc, FUNC1(0), 0x28160202);
			/* IQ calibration settings for chain 1. */
			FUNC10(sc, FUNC6(1), 0x10008c22);
			FUNC10(sc, FUNC2(1), 0x10008c22);
			FUNC10(sc, FUNC5(1), 0x82140102);
			FUNC10(sc, FUNC1(1), 0x28160202);
		} else
			FUNC10(sc, FUNC1(0), 0x28160502);

		/* LO calibration settings. */
		FUNC10(sc, R92C_IQK_AGC_RSP, 0x001028d1);
		/* We're doing LO and IQ calibration in one shot. */
		FUNC10(sc, R92C_IQK_AGC_PTS, 0xf9000000);
		FUNC10(sc, R92C_IQK_AGC_PTS, 0xf8000000);

	} else {		/* IQ calibration for chain 1. */
		/* We're doing LO and IQ calibration in one shot. */
		FUNC10(sc, R92C_IQK_AGC_CONT, 2);
		FUNC10(sc, R92C_IQK_AGC_CONT, 0);
	}

	/* Give LO and IQ calibrations the time to complete. */
	FUNC11(sc, 10000);

	/* Read IQ calibration status. */
	status = FUNC9(sc, FUNC3(0));

	if (status & (1 << (28 + chain * 3)))
		return (0);	/* Tx failed. */
	/* Read Tx IQ calibration results. */
	tx[0] = FUNC0(FUNC9(sc, FUNC8(chain)),
	    R92C_POWER_IQK_RESULT);
	tx[1] = FUNC0(FUNC9(sc, FUNC7(chain)),
	    R92C_POWER_IQK_RESULT);
	if (tx[0] == 0x142 || tx[1] == 0x042)
		return (0);	/* Tx failed. */

	if (status & (1 << (27 + chain * 3)))
		return (1);	/* Rx failed. */
	/* Read Rx IQ calibration results. */
	rx[0] = FUNC0(FUNC9(sc, FUNC4(chain)),
	    R92C_POWER_IQK_RESULT);
	rx[1] = FUNC0(FUNC9(sc, FUNC3(chain)),
	    R92C_POWER_IQK_RESULT);
	if (rx[0] == 0x132 || rx[1] == 0x036)
		return (1);	/* Rx failed. */

	return (3);	/* Both Tx and Rx succeeded. */
}