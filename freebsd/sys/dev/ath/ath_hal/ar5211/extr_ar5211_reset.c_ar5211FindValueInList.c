
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ channelValue; scalar_t__* PcdacValues; scalar_t__ numPcdacValues; scalar_t__* PwrValues; } ;
struct TYPE_4__ {scalar_t__ numChannels; TYPE_2__* pDataPerChannel; } ;
typedef TYPE_1__ PCDACS_EEPROM ;
typedef int HAL_BOOL ;
typedef TYPE_2__ DATA_PER_CHANNEL ;


 int AH_FALSE ;
 int AH_TRUE ;

HAL_BOOL
ar5211FindValueInList(uint16_t channel, uint16_t pcdacValue,
 const PCDACS_EEPROM *pSrcStruct, uint16_t *powerValue)
{
 const DATA_PER_CHANNEL *pChannelData;
 const uint16_t *pPcdac;
 uint16_t i, j;

 pChannelData = pSrcStruct->pDataPerChannel;
 for (i = 0; i < pSrcStruct->numChannels; i++ ) {
  if (pChannelData->channelValue == channel) {
   pPcdac = pChannelData->PcdacValues;
   for (j = 0; j < pChannelData->numPcdacValues; j++ ) {
    if (*pPcdac == pcdacValue) {
     *powerValue = pChannelData->PwrValues[j];
     return AH_TRUE;
    }
    pPcdac++;
   }
  }
  pChannelData++;
 }
 return AH_FALSE;
}
