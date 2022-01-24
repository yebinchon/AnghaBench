#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_19__ {int numChannels; int /*<<< orphan*/  xpd_mask; TYPE_1__* pDataPerChannel; } ;
struct TYPE_18__ {scalar_t__ ee_version; int ee_eepMap; int ee_eepMap2PowerCalStart; int /*<<< orphan*/ * ee_xgain; TYPE_2__* ee_rawDataset2413; scalar_t__ ee_Gmode; scalar_t__ ee_Bmode; scalar_t__ ee_Amode; } ;
struct TYPE_17__ {int /*<<< orphan*/  xpd_mask; } ;
struct TYPE_16__ {int numPdGains; } ;
typedef  TYPE_2__ RAW_DATA_STRUCT_2413 ;
typedef  TYPE_3__ HAL_EEPROM ;
typedef  int /*<<< orphan*/  HAL_BOOL ;
typedef  TYPE_4__ EEPROM_DATA_STRUCT_2413 ;

/* Variables and functions */
 int /*<<< orphan*/  AH_FALSE ; 
 TYPE_4__* AH_NULL ; 
 int /*<<< orphan*/  AH_TRUE ; 
 scalar_t__ AR_EEPROM_VER5_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NUM_11A_EEPROM_CHANNELS_2413 ; 
 int /*<<< orphan*/  NUM_2_4_EEPROM_CHANNELS_2413 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,TYPE_3__*,TYPE_4__*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (int) ; 
 size_t headerInfo11A ; 
 size_t headerInfo11B ; 
 size_t headerInfo11G ; 

__attribute__((used)) static HAL_BOOL
FUNC7(struct ath_hal *ah, HAL_EEPROM *ee)
{
	/* NB: index is 1 less than numPdgains */
	static const uint16_t wordsForPdgains[] = { 4, 6, 9, 12 };
	EEPROM_DATA_STRUCT_2413 *pCal = AH_NULL;
	RAW_DATA_STRUCT_2413 *pRaw;
	int numEEPROMWordsPerChannel;
	uint32_t off;
	HAL_BOOL ret = AH_FALSE;
	
	FUNC0(ee->ee_version >= AR_EEPROM_VER5_0);
	FUNC0(ee->ee_eepMap == 2);
	
	pCal = FUNC6(sizeof(EEPROM_DATA_STRUCT_2413));
	if (pCal == AH_NULL)
		goto exit;
	
	off = ee->ee_eepMap2PowerCalStart;
	if (ee->ee_Amode) {
		FUNC1(pCal, sizeof(EEPROM_DATA_STRUCT_2413));
		pCal->xpd_mask = ee->ee_xgain[headerInfo11A];
		if (!FUNC3(ah, ee, pCal, off,
			NUM_11A_EEPROM_CHANNELS_2413, headerInfo11A)) {
			goto exit;
		}
		pRaw = &ee->ee_rawDataset2413[headerInfo11A];
		pRaw->xpd_mask = ee->ee_xgain[headerInfo11A];
		FUNC4(pRaw, pCal);
		if (!FUNC2(ah, pCal, pRaw)) {
			goto exit;
		}
		/* setup offsets for mode_11a next */
		numEEPROMWordsPerChannel = wordsForPdgains[
			pCal->pDataPerChannel[0].numPdGains - 1];
		off += pCal->numChannels * numEEPROMWordsPerChannel + 5;
	}
	if (ee->ee_Bmode) {
		FUNC1(pCal, sizeof(EEPROM_DATA_STRUCT_2413));
		pCal->xpd_mask = ee->ee_xgain[headerInfo11B];
		if (!FUNC3(ah, ee, pCal, off,
			NUM_2_4_EEPROM_CHANNELS_2413 , headerInfo11B)) {
			goto exit;
		}
		pRaw = &ee->ee_rawDataset2413[headerInfo11B];
		pRaw->xpd_mask = ee->ee_xgain[headerInfo11B];
		FUNC4(pRaw, pCal);
		if (!FUNC2(ah, pCal, pRaw)) {
			goto exit;
		}
		/* setup offsets for mode_11g next */
		numEEPROMWordsPerChannel = wordsForPdgains[
			pCal->pDataPerChannel[0].numPdGains - 1];
		off += pCal->numChannels * numEEPROMWordsPerChannel + 2;
	}
	if (ee->ee_Gmode) {
		FUNC1(pCal, sizeof(EEPROM_DATA_STRUCT_2413));
		pCal->xpd_mask = ee->ee_xgain[headerInfo11G];
		if (!FUNC3(ah, ee, pCal, off,
			NUM_2_4_EEPROM_CHANNELS_2413, headerInfo11G)) {
			goto exit;
		}
		pRaw = &ee->ee_rawDataset2413[headerInfo11G];
		pRaw->xpd_mask = ee->ee_xgain[headerInfo11G];
		FUNC4(pRaw, pCal);
		if (!FUNC2(ah, pCal, pRaw)) {
			goto exit;
		}
	}
	ret = AH_TRUE;
 exit:
	if (pCal != AH_NULL)
		FUNC5(pCal);
	return ret;
}