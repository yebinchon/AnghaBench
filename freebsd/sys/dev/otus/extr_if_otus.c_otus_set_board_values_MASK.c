#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {struct ModalEepHeader* modalHeader; } ;
struct otus_softc {TYPE_1__ eeprom; } ;
struct ieee80211_channel {int dummy; } ;
struct ModalEepHeader {int switchSettling; int pgaDesiredSize; int adcDesiredSize; int txEndToXpaOff; int txFrameToXpaOn; int txEndToRxOn; int thresh62; int* txRxAttenCh; int* rxTxMarginCh; int* bswMargin; int* iqCalICh; int* iqCalQCh; int xpd; int /*<<< orphan*/ * antCtrlChain; int /*<<< orphan*/  antCtrlCommon; } ;

/* Variables and functions */
 scalar_t__ AR_PHY_CCA ; 
 scalar_t__ AR_PHY_DESIRED_SZ ; 
 scalar_t__ AR_PHY_GAIN_2GHZ ; 
 scalar_t__ AR_PHY_RF_CTL3 ; 
 scalar_t__ AR_PHY_RF_CTL4 ; 
 scalar_t__ AR_PHY_RXGAIN ; 
 scalar_t__ AR_PHY_SETTLING ; 
 scalar_t__ AR_PHY_SWITCH_CHAIN_0 ; 
 scalar_t__ AR_PHY_SWITCH_COM ; 
 scalar_t__ AR_PHY_TIMING_CTRL4 ; 
 scalar_t__ AR_PHY_TPCRG1 ; 
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct otus_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*,scalar_t__,int) ; 
 int FUNC4 (struct otus_softc*) ; 

int
FUNC5(struct otus_softc *sc, struct ieee80211_channel *c)
{
	const struct ModalEepHeader *eep;
	uint32_t tmp, offset;

	if (FUNC0(c))
		eep = &sc->eeprom.modalHeader[0];
	else
		eep = &sc->eeprom.modalHeader[1];

	/* Offset of chain 2. */
	offset = 2 * 0x1000;

	tmp = FUNC1(eep->antCtrlCommon);
	FUNC3(sc, AR_PHY_SWITCH_COM, tmp);

	tmp = FUNC1(eep->antCtrlChain[0]);
	FUNC3(sc, AR_PHY_SWITCH_CHAIN_0, tmp);

	tmp = FUNC1(eep->antCtrlChain[1]);
	FUNC3(sc, AR_PHY_SWITCH_CHAIN_0 + offset, tmp);

	if (1 /* sc->sc_sco == AR_SCO_SCN */) {
		tmp = FUNC2(sc, AR_PHY_SETTLING);
		tmp &= ~(0x7f << 7);
		tmp |= (eep->switchSettling & 0x7f) << 7;
		FUNC3(sc, AR_PHY_SETTLING, tmp);
	}

	tmp = FUNC2(sc, AR_PHY_DESIRED_SZ);
	tmp &= ~0xffff;
	tmp |= eep->pgaDesiredSize << 8 | eep->adcDesiredSize;
	FUNC3(sc, AR_PHY_DESIRED_SZ, tmp);

	tmp = eep->txEndToXpaOff << 24 | eep->txEndToXpaOff << 16 |
	      eep->txFrameToXpaOn << 8 | eep->txFrameToXpaOn;
	FUNC3(sc, AR_PHY_RF_CTL4, tmp);

	tmp = FUNC2(sc, AR_PHY_RF_CTL3);
	tmp &= ~(0xff << 16);
	tmp |= eep->txEndToRxOn << 16;
	FUNC3(sc, AR_PHY_RF_CTL3, tmp);

	tmp = FUNC2(sc, AR_PHY_CCA);
	tmp &= ~(0x7f << 12);
	tmp |= (eep->thresh62 & 0x7f) << 12;
	FUNC3(sc, AR_PHY_CCA, tmp);

	tmp = FUNC2(sc, AR_PHY_RXGAIN);
	tmp &= ~(0x3f << 12);
	tmp |= (eep->txRxAttenCh[0] & 0x3f) << 12;
	FUNC3(sc, AR_PHY_RXGAIN, tmp);

	tmp = FUNC2(sc, AR_PHY_RXGAIN + offset);
	tmp &= ~(0x3f << 12);
	tmp |= (eep->txRxAttenCh[1] & 0x3f) << 12;
	FUNC3(sc, AR_PHY_RXGAIN + offset, tmp);

	tmp = FUNC2(sc, AR_PHY_GAIN_2GHZ);
	tmp &= ~(0x3f << 18);
	tmp |= (eep->rxTxMarginCh[0] & 0x3f) << 18;
	if (FUNC0(c)) {
		tmp &= ~(0xf << 10);
		tmp |= (eep->bswMargin[0] & 0xf) << 10;
	}
	FUNC3(sc, AR_PHY_GAIN_2GHZ, tmp);

	tmp = FUNC2(sc, AR_PHY_GAIN_2GHZ + offset);
	tmp &= ~(0x3f << 18);
	tmp |= (eep->rxTxMarginCh[1] & 0x3f) << 18;
	FUNC3(sc, AR_PHY_GAIN_2GHZ + offset, tmp);

	tmp = FUNC2(sc, AR_PHY_TIMING_CTRL4);
	tmp &= ~(0x3f << 5 | 0x1f);
	tmp |= (eep->iqCalICh[0] & 0x3f) << 5 | (eep->iqCalQCh[0] & 0x1f);
	FUNC3(sc, AR_PHY_TIMING_CTRL4, tmp);

	tmp = FUNC2(sc, AR_PHY_TIMING_CTRL4 + offset);
	tmp &= ~(0x3f << 5 | 0x1f);
	tmp |= (eep->iqCalICh[1] & 0x3f) << 5 | (eep->iqCalQCh[1] & 0x1f);
	FUNC3(sc, AR_PHY_TIMING_CTRL4 + offset, tmp);

	tmp = FUNC2(sc, AR_PHY_TPCRG1);
	tmp &= ~(0xf << 16);
	tmp |= (eep->xpd & 0xf) << 16;
	FUNC3(sc, AR_PHY_TPCRG1, tmp);

	return FUNC4(sc);
}