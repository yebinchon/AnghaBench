#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {int antCtrlCommon; int switchSettling; int adcDesiredSize; int* antCtrlChain; int* antennaGainCh; int* txRxAttenCh; int* rxTxMarginCh; int* noiseFloorThreshCh; int* iqCalICh; int* iqCalQCh; int* bswAtten; int* bswMargin; int txEndToXpaOff; int txEndToRxOn; int txFrameToXpaOn; int thresh62; int xpdGain; int xpd; int pdGainOverlap; int xpaBiasLvl; int txFrameToDataStart; int txFrameToPaOn; int ht40PowerIncForPdadc; int swSettleHt40; int version; int db1; int db2; int ob_cck; int ob_psk; int ob_qam; int ob_pal_off; int* futureModal; TYPE_2__* spurChans; } ;
struct TYPE_5__ {TYPE_3__ modalHeader; } ;
struct TYPE_8__ {TYPE_1__ ee_base; } ;
struct TYPE_6__ {int spurChan; scalar_t__ spurRangeHigh; scalar_t__ spurRangeLow; } ;
typedef  TYPE_3__ MODAL_EEP_9287_HEADER ;
typedef  TYPE_4__ HAL_EEPROM_9287 ;

/* Variables and functions */
 int AR5416_EEPROM_MODAL_SPURS ; 
 int AR9287_MAX_CHAINS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(uint16_t *buf)
{
	HAL_EEPROM_9287 *eep = (HAL_EEPROM_9287 *) buf;
	MODAL_EEP_9287_HEADER *mh = &eep->ee_base.modalHeader;
	int i;

	FUNC0("| antCtrlCommon: 0x%.8x |\n", mh->antCtrlCommon);
	FUNC0("| switchSettling: 0x%.2x |\n", mh->switchSettling);
	FUNC0("| adcDesiredSize: %d |\n", mh->adcDesiredSize);

	for (i = 0; i < AR9287_MAX_CHAINS; i++) {
		FUNC0("| Chain %d:\n", i);
		FUNC0("| antCtrlChain:        0:0x%.4x |\n", mh->antCtrlChain[i]);
		FUNC0("| antennaGainCh:       0:0x%.2x |\n", mh->antennaGainCh[i]);
		FUNC0("| txRxAttenCh:         0:0x%.2x |\n", mh->txRxAttenCh[i]);
		FUNC0("| rxTxMarginCh:        0:0x%.2x |\n", mh->rxTxMarginCh[i]);
		FUNC0("| noiseFloorThresCh:   0:0x%.2x |\n", mh->noiseFloorThreshCh[i]);
		FUNC0("| iqCalICh:            0:0x%.2x |\n", mh->iqCalICh[i]);
		FUNC0("| iqCalQCh:            0:0x%.2x |\n", mh->iqCalQCh[i]);
		FUNC0("| bswAtten:            0:0x%.2x |\n", mh->bswAtten[i]);
		FUNC0("| bswMargin:           0:0x%.2x |\n", mh->bswMargin[i]);
		FUNC0("\n");
	}

	FUNC0("| txEndToXpaOff: 0x%.2x | txEndToRxOn: 0x%.2x | txFrameToXpaOn: 0x%.2x |\n",
	    mh->txEndToXpaOff, mh->txEndToRxOn, mh->txFrameToXpaOn);
	FUNC0("| thres62: 0x%.2x\n", mh->thresh62);
	FUNC0("| xpdGain: 0x%.2x | xpd: 0x%.2x |\n", mh->xpdGain, mh->xpd);

	FUNC0("| pdGainOverlap: 0x%.2x xpaBiasLvl: 0x%.2x |\n", mh->pdGainOverlap, mh->xpaBiasLvl);
	FUNC0("| txFrameToDataStart: 0x%.2x | txFrameToPaOn: 0x%.2x |\n", mh->txFrameToDataStart, mh->txFrameToPaOn);
	FUNC0("| ht40PowerIncForPdadc: 0x%.2x |\n", mh->ht40PowerIncForPdadc);
	FUNC0("| swSettleHt40: 0x%.2x |\n", mh->swSettleHt40);

	FUNC0("| Modal Version: %.2x |\n", mh->version);
	FUNC0("| db1 = %d | db2 = %d |\n", mh->db1, mh->db2);
	FUNC0("| ob_cck = %d | ob_psk = %d | ob_qam = %d | ob_pal_off = %d |\n",
	    mh->ob_cck, mh->ob_psk, mh->ob_qam, mh->ob_pal_off);

	FUNC0("| futureModal: ");
	for (i = 0; i < sizeof(mh->futureModal) / sizeof(uint16_t); i++) {
	    FUNC0("0x%.2x ", mh->futureModal[i]);
	}
	FUNC0("\n");

	/* and now, spur channels */
	for (i = 0; i < AR5416_EEPROM_MODAL_SPURS; i++) {
		FUNC0("| Spur %d: spurChan: 0x%.4x spurRangeLow: 0x%.2x spurRangeHigh: 0x%.2x |\n",
		    i, mh->spurChans[i].spurChan,
		    (int) mh->spurChans[i].spurRangeLow,
		    (int) mh->spurChans[i].spurRangeHigh);
	}
}