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
struct TYPE_7__ {int antCtrlCommon; int switchSettling; int adcDesiredSize; int* antCtrlChain; int* antennaGainCh; int* txRxAttenCh; int* rxTxMarginCh; int* noiseFloorThreshCh; int* xlnaGainCh; int* iqCalICh; int* iqCalQCh; int* bswAtten; int* bswMargin; int* xatten2Db; int* xatten2Margin; int txEndToXpaOff; int txEndToRxOn; int txFrameToXpaOn; int thresh62; int xpdGain; int xpd; int pdGainOverlap; int xpaBiasLvl; int txFrameToDataStart; int txFrameToPaOn; int ht40PowerIncForPdadc; int swSettleHt40; int ob_0; int ob_1; int ob_2; int ob_3; int db1_0; int db1_1; int db1_2; int db1_3; int db1_4; int db2_0; int db2_1; int db2_2; int db2_3; int db2_4; int antdiv_ctl1; int antdiv_ctl2; int version; int tx_diversity; int flc_pwr_thresh; int bb_scale_smrt_antenna; int* futureModal; TYPE_1__* spurChans; scalar_t__ pgaDesiredSize; } ;
struct TYPE_6__ {TYPE_3__ modalHeader; } ;
struct TYPE_8__ {TYPE_2__ ee_base; } ;
struct TYPE_5__ {int spurChan; scalar_t__ spurRangeHigh; scalar_t__ spurRangeLow; } ;
typedef  TYPE_3__ MODAL_EEP4K_HEADER ;
typedef  TYPE_4__ HAL_EEPROM_v4k ;

/* Variables and functions */
 int AR5416_EEPROM_MODAL_SPURS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

void
FUNC1(uint16_t *buf)
{
	HAL_EEPROM_v4k *eep = (HAL_EEPROM_v4k *) buf;
	MODAL_EEP4K_HEADER *mh = &eep->ee_base.modalHeader;
	int i;

	FUNC0("| antCtrlCommon: 0x%.8x |\n", mh->antCtrlCommon);
	FUNC0("| switchSettling: 0x%.2x |\n", mh->switchSettling);
	FUNC0("| adcDesiredSize: %d |\n| pgaDesiredSize: %.2f dBm |\n",
	    mh->adcDesiredSize, (float) mh->pgaDesiredSize / 2.0);

	FUNC0("| antCtrlChain:        0:0x%.4x |\n", mh->antCtrlChain[0]);
	FUNC0("| antennaGainCh:       0:0x%.2x |\n", mh->antennaGainCh[0]);
	FUNC0("| txRxAttenCh:         0:0x%.2x |\n", mh->txRxAttenCh[0]);
	FUNC0("| rxTxMarginCh:        0:0x%.2x |\n", mh->rxTxMarginCh[0]);
 	FUNC0("| noiseFloorThresCh:   0:0x%.2x |\n", mh->noiseFloorThreshCh[0]);
	FUNC0("| xlnaGainCh:          0:0x%.2x |\n", mh->xlnaGainCh[0]);
	FUNC0("| iqCalICh:            0:0x%.2x |\n", mh->iqCalICh[0]);
	FUNC0("| iqCalQCh:            0:0x%.2x |\n", mh->iqCalQCh[0]);
	FUNC0("| bswAtten:            0:0x%.2x |\n", mh->bswAtten[0]);
	FUNC0("| bswMargin:           0:0x%.2x |\n", mh->bswMargin[0]);
	FUNC0("| xatten2Db:           0:0x%.2x |\n", mh->xatten2Db[0]);
	FUNC0("| xatten2Margin:       0:0x%.2x |\n", mh->xatten2Margin[0]);

	FUNC0("| txEndToXpaOff: 0x%.2x | txEndToRxOn: 0x%.2x | txFrameToXpaOn: 0x%.2x |\n",
	    mh->txEndToXpaOff, mh->txEndToRxOn, mh->txFrameToXpaOn);
	FUNC0("| thres62: 0x%.2x\n", mh->thresh62);
	FUNC0("| xpdGain: 0x%.2x | xpd: 0x%.2x |\n", mh->xpdGain, mh->xpd);

	FUNC0("| pdGainOverlap: 0x%.2x xpaBiasLvl: 0x%.2x |\n", mh->pdGainOverlap, mh->xpaBiasLvl);
	FUNC0("| txFrameToDataStart: 0x%.2x | txFrameToPaOn: 0x%.2x |\n", mh->txFrameToDataStart, mh->txFrameToPaOn);
	FUNC0("| ht40PowerIncForPdadc: 0x%.2x |\n", mh->ht40PowerIncForPdadc);
	FUNC0("| swSettleHt40: 0x%.2x |\n", mh->swSettleHt40);

	FUNC0("| ob_0: 0x%.2x | ob_1: 0x%.2x | ob_2: 0x%.2x | ob_3: 0x%.2x |\n",
	    mh->ob_0, mh->ob_1, mh->ob_2, mh->ob_3);
	FUNC0("| db_1_0: 0x%.2x | db_1_1: 0x%.2x | db_1_2: 0x%.2x | db_1_3: 0x%.2x db_1_4: 0x%.2x|\n",
	    mh->db1_0, mh->db1_1, mh->db1_2, mh->db1_3, mh->db1_4);
	FUNC0("| db_1_0: 0x%.2x | db_1_1: 0x%.2x | db_1_2: 0x%.2x | db_1_3: 0x%.2x db_1_4: 0x%.2x|\n",
	    mh->db2_0, mh->db2_1, mh->db2_2, mh->db2_3, mh->db2_4);

	FUNC0("| antdiv_ctl1: 0x%.2x antdiv_ctl2: 0x%.2x |\n", mh->antdiv_ctl1, mh->antdiv_ctl2);

	FUNC0("| Modal Version: %.2x |\n", mh->version);

	FUNC0("| tx_diversity: 0x%.2x |\n", mh->tx_diversity);
	FUNC0("| flc_pwr_thresh: 0x%.2x |\n", mh->flc_pwr_thresh);
	FUNC0("| bb_scale_smrt_antenna: 0x%.2x |\n", mh->bb_scale_smrt_antenna);
	FUNC0("| futureModal: 0x%.2x |\n", mh->futureModal[0]);

	/* and now, spur channels */
	for (i = 0; i < AR5416_EEPROM_MODAL_SPURS; i++) {
		FUNC0("| Spur %d: spurChan: 0x%.4x spurRangeLow: 0x%.2x spurRangeHigh: 0x%.2x |\n",
		    i, mh->spurChans[i].spurChan,
		    (int) mh->spurChans[i].spurRangeLow,
		    (int) mh->spurChans[i].spurRangeHigh);
	}
}