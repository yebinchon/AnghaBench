
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_19__ {int numChannels; int xpd_mask; TYPE_1__* pDataPerChannel; } ;
struct TYPE_18__ {scalar_t__ ee_version; int ee_eepMap; int ee_eepMap2PowerCalStart; int * ee_xgain; TYPE_2__* ee_rawDataset2413; scalar_t__ ee_Gmode; scalar_t__ ee_Bmode; scalar_t__ ee_Amode; } ;
struct TYPE_17__ {int xpd_mask; } ;
struct TYPE_16__ {int numPdGains; } ;
typedef TYPE_2__ RAW_DATA_STRUCT_2413 ;
typedef TYPE_3__ HAL_EEPROM ;
typedef int HAL_BOOL ;
typedef TYPE_4__ EEPROM_DATA_STRUCT_2413 ;


 int AH_FALSE ;
 TYPE_4__* AH_NULL ;
 int AH_TRUE ;
 scalar_t__ AR_EEPROM_VER5_0 ;
 int HALASSERT (int) ;
 int NUM_11A_EEPROM_CHANNELS_2413 ;
 int NUM_2_4_EEPROM_CHANNELS_2413 ;
 int OS_MEMZERO (TYPE_4__*,int) ;
 int ar2413EepromToRawDataset (struct ath_hal*,TYPE_4__*,TYPE_2__*) ;
 int ar2413ReadCalDataset (struct ath_hal*,TYPE_3__*,TYPE_4__*,int,int ,size_t) ;
 int ar2413SetupRawDataset (TYPE_2__*,TYPE_4__*) ;
 int ath_hal_free (TYPE_4__*) ;
 TYPE_4__* ath_hal_malloc (int) ;
 size_t headerInfo11A ;
 size_t headerInfo11B ;
 size_t headerInfo11G ;

__attribute__((used)) static HAL_BOOL
readEepromRawPowerCalInfo2413(struct ath_hal *ah, HAL_EEPROM *ee)
{

 static const uint16_t wordsForPdgains[] = { 4, 6, 9, 12 };
 EEPROM_DATA_STRUCT_2413 *pCal = AH_NULL;
 RAW_DATA_STRUCT_2413 *pRaw;
 int numEEPROMWordsPerChannel;
 uint32_t off;
 HAL_BOOL ret = AH_FALSE;

 HALASSERT(ee->ee_version >= AR_EEPROM_VER5_0);
 HALASSERT(ee->ee_eepMap == 2);

 pCal = ath_hal_malloc(sizeof(EEPROM_DATA_STRUCT_2413));
 if (pCal == AH_NULL)
  goto exit;

 off = ee->ee_eepMap2PowerCalStart;
 if (ee->ee_Amode) {
  OS_MEMZERO(pCal, sizeof(EEPROM_DATA_STRUCT_2413));
  pCal->xpd_mask = ee->ee_xgain[headerInfo11A];
  if (!ar2413ReadCalDataset(ah, ee, pCal, off,
   NUM_11A_EEPROM_CHANNELS_2413, headerInfo11A)) {
   goto exit;
  }
  pRaw = &ee->ee_rawDataset2413[headerInfo11A];
  pRaw->xpd_mask = ee->ee_xgain[headerInfo11A];
  ar2413SetupRawDataset(pRaw, pCal);
  if (!ar2413EepromToRawDataset(ah, pCal, pRaw)) {
   goto exit;
  }

  numEEPROMWordsPerChannel = wordsForPdgains[
   pCal->pDataPerChannel[0].numPdGains - 1];
  off += pCal->numChannels * numEEPROMWordsPerChannel + 5;
 }
 if (ee->ee_Bmode) {
  OS_MEMZERO(pCal, sizeof(EEPROM_DATA_STRUCT_2413));
  pCal->xpd_mask = ee->ee_xgain[headerInfo11B];
  if (!ar2413ReadCalDataset(ah, ee, pCal, off,
   NUM_2_4_EEPROM_CHANNELS_2413 , headerInfo11B)) {
   goto exit;
  }
  pRaw = &ee->ee_rawDataset2413[headerInfo11B];
  pRaw->xpd_mask = ee->ee_xgain[headerInfo11B];
  ar2413SetupRawDataset(pRaw, pCal);
  if (!ar2413EepromToRawDataset(ah, pCal, pRaw)) {
   goto exit;
  }

  numEEPROMWordsPerChannel = wordsForPdgains[
   pCal->pDataPerChannel[0].numPdGains - 1];
  off += pCal->numChannels * numEEPROMWordsPerChannel + 2;
 }
 if (ee->ee_Gmode) {
  OS_MEMZERO(pCal, sizeof(EEPROM_DATA_STRUCT_2413));
  pCal->xpd_mask = ee->ee_xgain[headerInfo11G];
  if (!ar2413ReadCalDataset(ah, ee, pCal, off,
   NUM_2_4_EEPROM_CHANNELS_2413, headerInfo11G)) {
   goto exit;
  }
  pRaw = &ee->ee_rawDataset2413[headerInfo11G];
  pRaw->xpd_mask = ee->ee_xgain[headerInfo11G];
  ar2413SetupRawDataset(pRaw, pCal);
  if (!ar2413EepromToRawDataset(ah, pCal, pRaw)) {
   goto exit;
  }
 }
 ret = AH_TRUE;
 exit:
 if (pCal != AH_NULL)
  ath_hal_free(pCal);
 return ret;
}
