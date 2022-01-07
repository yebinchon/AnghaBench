
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ channelValue; int numPcdacValues; int PcdacValues; } ;
struct TYPE_4__ {int numChannels; TYPE_2__* pDataPerChannel; } ;
typedef TYPE_1__ PCDACS_EEPROM ;
typedef TYPE_2__ DATA_PER_CHANNEL ;


 int ar5211GetLowerUpperValues (scalar_t__,int ,int ,scalar_t__*,scalar_t__*) ;

void
ar5211GetLowerUpperPcdacs(uint16_t pcdac, uint16_t channel,
 const PCDACS_EEPROM *pSrcStruct,
 uint16_t *pLowerPcdac, uint16_t *pUpperPcdac)
{
 const DATA_PER_CHANNEL *pChannelData;
 int i;


 pChannelData = pSrcStruct->pDataPerChannel;
 for (i = 0; i < pSrcStruct->numChannels; i++) {
  if (pChannelData->channelValue == channel)
   break;
  pChannelData++;
 }
 ar5211GetLowerUpperValues(pcdac, pChannelData->PcdacValues,
  pChannelData->numPcdacValues, pLowerPcdac, pUpperPcdac);
}
