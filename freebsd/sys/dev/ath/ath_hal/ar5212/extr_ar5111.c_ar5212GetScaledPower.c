
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int numChannels; int pChannelList; } ;
typedef TYPE_1__ PCDACS_EEPROM ;


 scalar_t__ ar5212FindValueInList (int ,int ,TYPE_1__ const*,int *) ;
 int ar5212GetLowerUpperPcdacs (int ,int ,TYPE_1__ const*,int *,int *) ;
 int ar5212GetLowerUpperValues (int ,int ,int ,int *,int *) ;
 int interpolate (int ,int ,int ,int ,int ) ;

__attribute__((used)) static uint16_t
ar5212GetScaledPower(uint16_t channel, uint16_t pcdacValue,
 const PCDACS_EEPROM *pSrcStruct)
{
 uint16_t powerValue;
 uint16_t lFreq, rFreq;
 uint16_t llPcdac, ulPcdac;
 uint16_t lrPcdac, urPcdac;
 uint16_t lPwr, uPwr;
 uint16_t lScaledPwr, rScaledPwr;

 if (ar5212FindValueInList(channel, pcdacValue, pSrcStruct, &powerValue)) {

  return powerValue;
 }

 ar5212GetLowerUpperValues(channel,
  pSrcStruct->pChannelList, pSrcStruct->numChannels,
  &lFreq, &rFreq);
 ar5212GetLowerUpperPcdacs(pcdacValue,
  lFreq, pSrcStruct, &llPcdac, &ulPcdac);
 ar5212GetLowerUpperPcdacs(pcdacValue,
  rFreq, pSrcStruct, &lrPcdac, &urPcdac);


 ar5212FindValueInList(lFreq, llPcdac, pSrcStruct, &lPwr);
 ar5212FindValueInList(lFreq, ulPcdac, pSrcStruct, &uPwr);
 lScaledPwr = interpolate(pcdacValue, llPcdac, ulPcdac, lPwr, uPwr);

 ar5212FindValueInList(rFreq, lrPcdac, pSrcStruct, &lPwr);
 ar5212FindValueInList(rFreq, urPcdac, pSrcStruct, &uPwr);
 rScaledPwr = interpolate(pcdacValue, lrPcdac, urPcdac, lPwr, uPwr);

 return interpolate(channel, lFreq, rFreq, lScaledPwr, rScaledPwr);
}
