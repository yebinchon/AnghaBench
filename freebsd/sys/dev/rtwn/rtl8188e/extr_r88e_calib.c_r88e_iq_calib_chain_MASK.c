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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R88E_RF_WE_LUT ; 
 int /*<<< orphan*/  R92C_FPGA0_IQK ; 
 int /*<<< orphan*/  R92C_IQK_AGC_PTS ; 
 int /*<<< orphan*/  R92C_IQK_AGC_RSP ; 
 int /*<<< orphan*/  R92C_POWER_IQK_RESULT ; 
 int /*<<< orphan*/  R92C_RF_RCK_OS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  R92C_RX_IQK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R92C_TX_IQK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rtwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rtwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(struct rtwn_softc *sc, uint16_t tx[2], uint16_t rx[2])
{
	uint32_t status;

	/* Set Rx IQ calibration mode table. */
	FUNC11(sc, R92C_FPGA0_IQK, 0);
	FUNC13(sc, 0, R88E_RF_WE_LUT, 0x800a0);
	FUNC13(sc, 0, R92C_RF_RCK_OS, 0x30000);
	FUNC13(sc, 0, FUNC1(0), 0xf);
	FUNC13(sc, 0, FUNC1(1), 0xf117b);
	FUNC11(sc, R92C_FPGA0_IQK, 0x80800000);

	/* IQ calibration settings. */
	FUNC11(sc, R92C_TX_IQK, 0x01007c00);
	FUNC11(sc, R92C_RX_IQK, 0x81004800);

	/* IQ calibration settings for chain 0. */
	FUNC11(sc, FUNC7(0), 0x10008c1c);
	FUNC11(sc, FUNC3(0), 0x30008c1c);
	FUNC11(sc, FUNC6(0), 0x82160804);
	FUNC11(sc, FUNC2(0), 0x28160000);

	/* LO calibration settings. */
	FUNC11(sc, R92C_IQK_AGC_RSP, 0x0046a911);

	/* We're doing LO and IQ calibration in one shot. */
	FUNC11(sc, R92C_IQK_AGC_PTS, 0xf9000000);
	FUNC11(sc, R92C_IQK_AGC_PTS, 0xf8000000);

	/* Give LO and IQ calibrations the time to complete. */
	FUNC12(sc, 10000);

	/* Read IQ calibration status. */
	status = FUNC10(sc, FUNC4(0));
	if (status & (1 << 28))
		return (0);	/* Tx failed. */

	/* Read Tx IQ calibration results. */
	tx[0] = FUNC0(FUNC10(sc, FUNC9(0)),
	    R92C_POWER_IQK_RESULT);
	tx[1] = FUNC0(FUNC10(sc, FUNC8(0)),
	    R92C_POWER_IQK_RESULT);
	if (tx[0] == 0x142 || tx[1] == 0x042)
		return (0);	/* Tx failed. */

	FUNC11(sc, R92C_TX_IQK, 0x80007c00 | (tx[0] << 16) | tx[1]);

	/* Set Rx IQ calibration mode table. */
	FUNC11(sc, R92C_FPGA0_IQK, 0);
	FUNC13(sc, 0, R88E_RF_WE_LUT, 0x800a0);
	FUNC13(sc, 0, R92C_RF_RCK_OS, 0x30000);
	FUNC13(sc, 0, FUNC1(0), 0xf);
	FUNC13(sc, 0, FUNC1(1), 0xf7ffa);
	FUNC11(sc, R92C_FPGA0_IQK, 0x80800000);

	/* IQ calibration settings. */
	FUNC11(sc, R92C_RX_IQK, 0x01004800);

	/* IQ calibration settings for chain 0. */
	FUNC11(sc, FUNC7(0), 0x30008c1c);
	FUNC11(sc, FUNC3(0), 0x10008c1c);
	FUNC11(sc, FUNC6(0), 0x82160c05);
	FUNC11(sc, FUNC2(0), 0x28160c05);

	/* LO calibration settings. */
	FUNC11(sc, R92C_IQK_AGC_RSP, 0x0046a911);

	/* We're doing LO and IQ calibration in one shot. */
	FUNC11(sc, R92C_IQK_AGC_PTS, 0xf9000000);
	FUNC11(sc, R92C_IQK_AGC_PTS, 0xf8000000);

	/* Give LO and IQ calibrations the time to complete. */
	FUNC12(sc, 10000);

	/* Read IQ calibration status. */
	status = FUNC10(sc, FUNC4(0));
	if (status & (1 << 27))
		return (1);	/* Rx failed. */

	/* Read Rx IQ calibration results. */
	rx[0] = FUNC0(FUNC10(sc, FUNC5(0)),
	    R92C_POWER_IQK_RESULT);
	rx[1] = FUNC0(status, R92C_POWER_IQK_RESULT);
	if (rx[0] == 0x132 || rx[1] == 0x036)
		return (1);	/* Rx failed. */

	return (3);	/* Both Tx and Rx succeeded. */
}