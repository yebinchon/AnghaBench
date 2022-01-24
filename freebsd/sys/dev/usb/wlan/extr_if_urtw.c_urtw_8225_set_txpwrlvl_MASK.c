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
typedef  scalar_t__ usb_error_t ;
typedef  int uint8_t ;
struct urtw_softc {int* sc_txpwr_cck; int* sc_txpwr_ofdm; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  URTW_8225_ANAPARAM2_ON ; 
 int /*<<< orphan*/  URTW_TX_GAIN_CCK ; 
 int /*<<< orphan*/  URTW_TX_GAIN_OFDM ; 
 scalar_t__ FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int,int) ; 
 int* urtw_8225_tx_gain_cck_ofdm ; 
 int* urtw_8225_txpwr_cck ; 
 int* urtw_8225_txpwr_cck_ch14 ; 
 int* urtw_8225_txpwr_ofdm ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct urtw_softc *sc, int chan)
{
	int i, idx, set;
	uint8_t *cck_pwltable;
	uint8_t cck_pwrlvl_max, ofdm_pwrlvl_min, ofdm_pwrlvl_max;
	uint8_t cck_pwrlvl = sc->sc_txpwr_cck[chan] & 0xff;
	uint8_t ofdm_pwrlvl = sc->sc_txpwr_ofdm[chan] & 0xff;
	usb_error_t error;

	cck_pwrlvl_max = 11;
	ofdm_pwrlvl_max = 25;	/* 12 -> 25  */
	ofdm_pwrlvl_min = 10;

	/* CCK power setting */
	cck_pwrlvl = (cck_pwrlvl > cck_pwrlvl_max) ? cck_pwrlvl_max : cck_pwrlvl;
	idx = cck_pwrlvl % 6;
	set = cck_pwrlvl / 6;
	cck_pwltable = (chan == 14) ? urtw_8225_txpwr_cck_ch14 :
	    urtw_8225_txpwr_cck;

	FUNC3(sc, URTW_TX_GAIN_CCK,
	    urtw_8225_tx_gain_cck_ofdm[set] >> 1);
	for (i = 0; i < 8; i++) {
		FUNC1(sc, 0x44 + i,
		    cck_pwltable[idx * 8 + i]);
	}
	FUNC4(&sc->sc_mtx, 1);

	/* OFDM power setting */
	ofdm_pwrlvl = (ofdm_pwrlvl > (ofdm_pwrlvl_max - ofdm_pwrlvl_min)) ?
	    ofdm_pwrlvl_max : ofdm_pwrlvl + ofdm_pwrlvl_min;
	ofdm_pwrlvl = (ofdm_pwrlvl > 35) ? 35 : ofdm_pwrlvl;

	idx = ofdm_pwrlvl % 6;
	set = ofdm_pwrlvl / 6;

	error = FUNC0(sc, URTW_8225_ANAPARAM2_ON);
	if (error)
		goto fail;
	FUNC2(sc, 2, 0x42);
	FUNC2(sc, 6, 0);
	FUNC2(sc, 8, 0);

	FUNC3(sc, URTW_TX_GAIN_OFDM,
	    urtw_8225_tx_gain_cck_ofdm[set] >> 1);
	FUNC2(sc, 0x5, urtw_8225_txpwr_ofdm[idx]);
	FUNC2(sc, 0x7, urtw_8225_txpwr_ofdm[idx]);
	FUNC4(&sc->sc_mtx, 1);
fail:
	return (error);
}