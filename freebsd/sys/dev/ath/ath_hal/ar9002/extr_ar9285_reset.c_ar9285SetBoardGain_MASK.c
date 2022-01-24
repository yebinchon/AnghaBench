#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_4__ {int version; } ;
struct ar5416eeprom_4k {TYPE_1__ baseEepHeader; } ;
struct TYPE_5__ {int* antCtrlChain; int /*<<< orphan*/ * rxTxMarginCh; int /*<<< orphan*/ * xatten2Db; int /*<<< orphan*/ * xatten2Margin; int /*<<< orphan*/ * bswAtten; int /*<<< orphan*/ * bswMargin; int /*<<< orphan*/ * txRxAttenCh; int /*<<< orphan*/ * iqCalQCh; int /*<<< orphan*/ * iqCalICh; } ;
typedef  TYPE_2__ MODAL_EEP4K_HEADER ;

/* Variables and functions */
 int AR5416_EEP_MINOR_VER_3 ; 
 int AR5416_EEP_VER_MINOR_MASK ; 
 int /*<<< orphan*/  AR9280_PHY_RXGAIN_TXRX_ATTEN ; 
 int /*<<< orphan*/  AR9280_PHY_RXGAIN_TXRX_MARGIN ; 
 scalar_t__ AR_PHY_GAIN_2GHZ ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN1_DB ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN2_DB ; 
 int /*<<< orphan*/  AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN ; 
 scalar_t__ AR_PHY_RXGAIN ; 
 int /*<<< orphan*/  AR_PHY_SWITCH_CHAIN_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ; 
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ; 
 int FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ath_hal *ah, const MODAL_EEP4K_HEADER *pModal,
    const struct ar5416eeprom_4k *eep, uint8_t txRxAttenLocal)
{
	FUNC3(ah, AR_PHY_SWITCH_CHAIN_0,
		  pModal->antCtrlChain[0]);

	FUNC3(ah, FUNC0(0),
		  (FUNC1(ah, FUNC0(0)) &
		   ~(AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF |
		     AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF)) |
		  FUNC4(pModal->iqCalICh[0], AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF) |
		  FUNC4(pModal->iqCalQCh[0], AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF));

	if ((eep->baseEepHeader.version & AR5416_EEP_VER_MINOR_MASK) >=
	    AR5416_EEP_MINOR_VER_3) {
		txRxAttenLocal = pModal->txRxAttenCh[0];

		FUNC2(ah, AR_PHY_GAIN_2GHZ,
		    AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN, pModal->bswMargin[0]);
		FUNC2(ah, AR_PHY_GAIN_2GHZ,
		    AR_PHY_GAIN_2GHZ_XATTEN1_DB, pModal->bswAtten[0]);
		FUNC2(ah, AR_PHY_GAIN_2GHZ,
		    AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN, pModal->xatten2Margin[0]);
		FUNC2(ah, AR_PHY_GAIN_2GHZ,
		    AR_PHY_GAIN_2GHZ_XATTEN2_DB, pModal->xatten2Db[0]);

		/* Set the block 1 value to block 0 value */
		FUNC2(ah, AR_PHY_GAIN_2GHZ + 0x1000,
		      AR_PHY_GAIN_2GHZ_XATTEN1_MARGIN,
		      pModal->bswMargin[0]);
		FUNC2(ah, AR_PHY_GAIN_2GHZ + 0x1000,
		      AR_PHY_GAIN_2GHZ_XATTEN1_DB, pModal->bswAtten[0]);
		FUNC2(ah, AR_PHY_GAIN_2GHZ + 0x1000,
		      AR_PHY_GAIN_2GHZ_XATTEN2_MARGIN,
		      pModal->xatten2Margin[0]);
		FUNC2(ah, AR_PHY_GAIN_2GHZ + 0x1000,
		      AR_PHY_GAIN_2GHZ_XATTEN2_DB, pModal->xatten2Db[0]);
	}

	FUNC2(ah, AR_PHY_RXGAIN,
		      AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
	FUNC2(ah, AR_PHY_RXGAIN,
		      AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[0]);

	FUNC2(ah, AR_PHY_RXGAIN + 0x1000,
		      AR9280_PHY_RXGAIN_TXRX_ATTEN, txRxAttenLocal);
	FUNC2(ah, AR_PHY_RXGAIN + 0x1000,
		      AR9280_PHY_RXGAIN_TXRX_MARGIN, pModal->rxTxMarginCh[0]);
}