#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int dacLpMode; int desiredScaleCCK; scalar_t__ dacHiPwrMode_5G; } ;
struct ar5416eeprom {TYPE_1__ baseEepHeader; TYPE_2__* modalHeader; } ;
struct TYPE_9__ {scalar_t__ ah_eeversion; TYPE_3__* ah_eeprom; } ;
struct TYPE_8__ {struct ar5416eeprom ee_base; } ;
struct TYPE_7__ {int antCtrlCommon; int* antCtrlChain; int ob; int db; int ob_ch1; int db_ch1; int xpaBiasLvl; int flagBits; int switchSettling; int adcDesiredSize; int pgaDesiredSize; int txEndToRxOn; int thresh62; int txFrameToDataStart; int txFrameToPaOn; int swSettleHt40; int miscBits; int /*<<< orphan*/  txFrameToXpaOn; int /*<<< orphan*/  txEndToXpaOff; int /*<<< orphan*/ * iqCalQCh; int /*<<< orphan*/ * iqCalICh; } ;
typedef  TYPE_2__ MODAL_EEP_HEADER ;
typedef  TYPE_3__ HAL_EEPROM_v14 ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int AR5416_EEP_FLAG_FORCEXPAON ; 
 int AR5416_EEP_FLAG_LOCALBIAS ; 
 scalar_t__ AR5416_EEP_MINOR_VER_19 ; 
 scalar_t__ AR5416_EEP_MINOR_VER_20 ; 
 int AR5416_MAX_CHAINS ; 
 int /*<<< orphan*/  AR9280_PHY_CCA_THRESH62 ; 
 int /*<<< orphan*/  AR_AN_RF2G1_CH0 ; 
 int /*<<< orphan*/  AR_AN_RF2G1_CH0_DB ; 
 int /*<<< orphan*/  AR_AN_RF2G1_CH0_OB ; 
 int /*<<< orphan*/  AR_AN_RF2G1_CH1 ; 
 int /*<<< orphan*/  AR_AN_RF2G1_CH1_DB ; 
 int /*<<< orphan*/  AR_AN_RF2G1_CH1_OB ; 
 int /*<<< orphan*/  AR_AN_RF5G1_CH0 ; 
 int /*<<< orphan*/  AR_AN_RF5G1_CH0_DB5 ; 
 int /*<<< orphan*/  AR_AN_RF5G1_CH0_OB5 ; 
 int /*<<< orphan*/  AR_AN_RF5G1_CH1 ; 
 int /*<<< orphan*/  AR_AN_RF5G1_CH1_DB5 ; 
 int /*<<< orphan*/  AR_AN_RF5G1_CH1_OB5 ; 
 int /*<<< orphan*/  AR_AN_TOP1 ; 
 int /*<<< orphan*/  AR_AN_TOP1_DACIPMODE ; 
 int /*<<< orphan*/  AR_AN_TOP2 ; 
 int /*<<< orphan*/  AR_AN_TOP2_LOCALBIAS ; 
 int /*<<< orphan*/  AR_AN_TOP2_XPABIAS_LVL ; 
 scalar_t__ AR_EEPROM_VER14_1 ; 
 int /*<<< orphan*/  AR_PHY_CCA ; 
 int /*<<< orphan*/  AR_PHY_CCA_THRESH62 ; 
 int /*<<< orphan*/  AR_PHY_CCK_TX_CTRL ; 
 int /*<<< orphan*/  AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK ; 
 int /*<<< orphan*/  AR_PHY_DESIRED_SZ ; 
 int /*<<< orphan*/  AR_PHY_DESIRED_SZ_ADC ; 
 int /*<<< orphan*/  AR_PHY_DESIRED_SZ_PGA ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA0 ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA0_THRESH62 ; 
 int /*<<< orphan*/  AR_PHY_EXT_CCA_THRESH62 ; 
 int /*<<< orphan*/  AR_PHY_FORCE_XPA_CFG ; 
 int /*<<< orphan*/  AR_PHY_FRAME_CTL ; 
 int /*<<< orphan*/  AR_PHY_FRAME_CTL_TX_CLIP ; 
 int /*<<< orphan*/  AR_PHY_RF_CTL2 ; 
 int /*<<< orphan*/  AR_PHY_RF_CTL3 ; 
 scalar_t__ AR_PHY_RF_CTL4 ; 
 int AR_PHY_RF_CTL4_FRAME_XPAA_ON ; 
 int AR_PHY_RF_CTL4_FRAME_XPAB_ON ; 
 int AR_PHY_RF_CTL4_TX_END_XPAA_OFF ; 
 int AR_PHY_RF_CTL4_TX_END_XPAB_OFF ; 
 int /*<<< orphan*/  AR_PHY_SETTLING ; 
 int /*<<< orphan*/  AR_PHY_SETTLING_SWITCH ; 
 scalar_t__ AR_PHY_SWITCH_CHAIN_0 ; 
 scalar_t__ AR_PHY_SWITCH_COM ; 
 scalar_t__ AR_PHY_TIMING_CTRL4 ; 
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF ; 
 int AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF ; 
 int /*<<< orphan*/  AR_PHY_TX_DESIRED_SCALE_CCK ; 
 int /*<<< orphan*/  AR_PHY_TX_END_TO_A2_RX_ON ; 
 int /*<<< orphan*/  AR_PHY_TX_FRAME_TO_DATA_START ; 
 int /*<<< orphan*/  AR_PHY_TX_FRAME_TO_PA_ON ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL9 ; 
 int /*<<< orphan*/  AR_PHY_XPA_CFG ; 
 scalar_t__ FUNC1 (struct ath_hal*) ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 scalar_t__ FUNC4 (struct ath_hal*) ; 
 scalar_t__ FUNC5 (struct ath_hal*) ; 
 scalar_t__ FUNC6 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC9 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC10 (struct ath_hal*) ; 
 scalar_t__ FUNC11 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (struct ath_hal*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hal*,scalar_t__,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ath_hal*,TYPE_2__ const*,struct ar5416eeprom const*,int,int,int) ; 

HAL_BOOL
FUNC20(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
    const HAL_EEPROM_v14 *ee = FUNC0(ah)->ah_eeprom;
    const struct ar5416eeprom *eep = &ee->ee_base;
    const MODAL_EEP_HEADER *pModal;
    int			i, regChainOffset;
    uint8_t		txRxAttenLocal;    /* workaround for eeprom versions <= 14.2 */

    FUNC7(FUNC0(ah)->ah_eeversion >= AR_EEPROM_VER14_1);
    pModal = &eep->modalHeader[FUNC8(chan)];

    /* NB: workaround for eeprom versions <= 14.2 */
    txRxAttenLocal = FUNC8(chan) ? 23 : 44;

    FUNC16(ah, AR_PHY_SWITCH_COM, pModal->antCtrlCommon);
    for (i = 0; i < AR5416_MAX_CHAINS; i++) { 
	   if (FUNC2(ah)) {
		if (i >= 2) break;
	   }
	regChainOffset = FUNC18(ah, i);

        FUNC16(ah, AR_PHY_SWITCH_CHAIN_0 + regChainOffset, pModal->antCtrlChain[i]);

        FUNC16(ah, AR_PHY_TIMING_CTRL4 + regChainOffset, 
        	(FUNC14(ah, AR_PHY_TIMING_CTRL4 + regChainOffset) &
        	~(AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF | AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF)) |
        	FUNC17(pModal->iqCalICh[i], AR_PHY_TIMING_CTRL4_IQCORR_Q_I_COFF) |
        	FUNC17(pModal->iqCalQCh[i], AR_PHY_TIMING_CTRL4_IQCORR_Q_Q_COFF));

        /*
         * Large signal upgrade,
	 * If 14.3 or later EEPROM, use
	 * txRxAttenLocal = pModal->txRxAttenCh[i]
	 * else txRxAttenLocal is fixed value above.
         */

        if ((i == 0) || FUNC1(ah))
	    FUNC19(ah, pModal, eep, txRxAttenLocal, regChainOffset, i);

    }

	if (FUNC3(ah)) {
                if (FUNC8(chan)) {
                        FUNC12(ah, AR_AN_RF2G1_CH0, AR_AN_RF2G1_CH0_OB, pModal->ob);
                        FUNC12(ah, AR_AN_RF2G1_CH0, AR_AN_RF2G1_CH0_DB, pModal->db);
                        FUNC12(ah, AR_AN_RF2G1_CH1, AR_AN_RF2G1_CH1_OB, pModal->ob_ch1);
                        FUNC12(ah, AR_AN_RF2G1_CH1, AR_AN_RF2G1_CH1_DB, pModal->db_ch1);
                } else {
                        FUNC12(ah, AR_AN_RF5G1_CH0, AR_AN_RF5G1_CH0_OB5, pModal->ob);
                        FUNC12(ah, AR_AN_RF5G1_CH0, AR_AN_RF5G1_CH0_DB5, pModal->db);
                        FUNC12(ah, AR_AN_RF5G1_CH1, AR_AN_RF5G1_CH1_OB5, pModal->ob_ch1);
                        FUNC12(ah, AR_AN_RF5G1_CH1, AR_AN_RF5G1_CH1_DB5, pModal->db_ch1);
                }
                FUNC12(ah, AR_AN_TOP2, AR_AN_TOP2_XPABIAS_LVL, pModal->xpaBiasLvl);
                FUNC12(ah, AR_AN_TOP2, AR_AN_TOP2_LOCALBIAS,
		    !!(pModal->flagBits & AR5416_EEP_FLAG_LOCALBIAS));
                FUNC12(ah, AR_PHY_XPA_CFG, AR_PHY_FORCE_XPA_CFG,
		    !!(pModal->flagBits & AR5416_EEP_FLAG_FORCEXPAON));
        }

    FUNC15(ah, AR_PHY_SETTLING, AR_PHY_SETTLING_SWITCH, pModal->switchSettling);
    FUNC15(ah, AR_PHY_DESIRED_SZ, AR_PHY_DESIRED_SZ_ADC, pModal->adcDesiredSize);

    if (! FUNC3(ah))
    	FUNC15(ah, AR_PHY_DESIRED_SZ, AR_PHY_DESIRED_SZ_PGA, pModal->pgaDesiredSize);

    FUNC16(ah, AR_PHY_RF_CTL4,
        FUNC17(pModal->txEndToXpaOff, AR_PHY_RF_CTL4_TX_END_XPAA_OFF)
        | FUNC17(pModal->txEndToXpaOff, AR_PHY_RF_CTL4_TX_END_XPAB_OFF)
        | FUNC17(pModal->txFrameToXpaOn, AR_PHY_RF_CTL4_FRAME_XPAA_ON)
        | FUNC17(pModal->txFrameToXpaOn, AR_PHY_RF_CTL4_FRAME_XPAB_ON));

    FUNC15(ah, AR_PHY_RF_CTL3, AR_PHY_TX_END_TO_A2_RX_ON,
	pModal->txEndToRxOn);

    if (FUNC3(ah)) {
	FUNC15(ah, AR_PHY_CCA, AR9280_PHY_CCA_THRESH62,
	    pModal->thresh62);
	FUNC15(ah, AR_PHY_EXT_CCA0, AR_PHY_EXT_CCA0_THRESH62,
	    pModal->thresh62);
    } else {
	FUNC15(ah, AR_PHY_CCA, AR_PHY_CCA_THRESH62,
	    pModal->thresh62);
	FUNC15(ah, AR_PHY_EXT_CCA, AR_PHY_EXT_CCA_THRESH62,
	    pModal->thresh62);
    }
    
    /* Minor Version Specific application */
    if (FUNC10(ah)) {
        FUNC15(ah, AR_PHY_RF_CTL2, AR_PHY_TX_FRAME_TO_DATA_START,
	    pModal->txFrameToDataStart);
        FUNC15(ah, AR_PHY_RF_CTL2, AR_PHY_TX_FRAME_TO_PA_ON,
	    pModal->txFrameToPaOn);    
    }	

    if (FUNC11(ah) && FUNC9(chan))
		/* Overwrite switch settling with HT40 value */
		FUNC15(ah, AR_PHY_SETTLING, AR_PHY_SETTLING_SWITCH,
		    pModal->swSettleHt40);

    if (FUNC5(ah) && FUNC6(ah) >= AR5416_EEP_MINOR_VER_19)
         FUNC15(ah, AR_PHY_CCK_TX_CTRL, AR_PHY_CCK_TX_CTRL_TX_DAC_SCALE_CCK, pModal->miscBits);

        if (FUNC4(ah) && FUNC6(ah) >= AR5416_EEP_MINOR_VER_20) {
                if (FUNC8(chan))
                        FUNC12(ah, AR_AN_TOP1, AR_AN_TOP1_DACIPMODE,
			    eep->baseEepHeader.dacLpMode);
                else if (eep->baseEepHeader.dacHiPwrMode_5G)
                        FUNC12(ah, AR_AN_TOP1, AR_AN_TOP1_DACIPMODE, 0);
                else
                        FUNC12(ah, AR_AN_TOP1, AR_AN_TOP1_DACIPMODE,
			    eep->baseEepHeader.dacLpMode);

		FUNC13(100);

                FUNC15(ah, AR_PHY_FRAME_CTL, AR_PHY_FRAME_CTL_TX_CLIP,
		    pModal->miscBits >> 2);
                FUNC15(ah, AR_PHY_TX_PWRCTRL9, AR_PHY_TX_DESIRED_SCALE_CCK,
		    eep->baseEepHeader.desiredScaleCCK);
        }

    return (AH_TRUE);
}