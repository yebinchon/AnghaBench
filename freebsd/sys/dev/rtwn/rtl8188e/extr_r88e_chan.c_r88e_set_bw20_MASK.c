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
struct rtwn_softc {struct r92c_softc* sc_priv; } ;
struct r92c_softc {int* rf_chnlbw; } ;

/* Variables and functions */
 int R88E_RF_CHNLBW_BW20 ; 
 int /*<<< orphan*/  R92C_BWOPMODE ; 
 int /*<<< orphan*/  R92C_BWOPMODE_20MHZ ; 
 int /*<<< orphan*/  R92C_FPGA0_RFMOD ; 
 int /*<<< orphan*/  R92C_FPGA1_RFMOD ; 
 int /*<<< orphan*/  R92C_RFMOD_40MHZ ; 
 int /*<<< orphan*/  R92C_RF_CHNLBW ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct rtwn_softc *sc, uint8_t chan)
{
	struct r92c_softc *rs = sc->sc_priv;

	FUNC2(sc, R92C_BWOPMODE, 0, R92C_BWOPMODE_20MHZ);

	FUNC0(sc, R92C_FPGA0_RFMOD, R92C_RFMOD_40MHZ, 0);
	FUNC0(sc, R92C_FPGA1_RFMOD, R92C_RFMOD_40MHZ, 0);

	/* Select 20MHz bandwidth. */
	FUNC1(sc, 0, R92C_RF_CHNLBW,
	    (rs->rf_chnlbw[0] & ~0xfff) | chan | R88E_RF_CHNLBW_BW20);
}