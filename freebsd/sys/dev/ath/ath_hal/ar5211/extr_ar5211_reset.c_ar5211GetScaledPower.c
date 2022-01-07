
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int numChannels; int pChannelList; } ;
typedef TYPE_1__ PCDACS_EEPROM ;


 scalar_t__ ar5211FindValueInList (int ,int ,TYPE_1__ const*,int *) ;
 int ar5211GetInterpolatedValue (int ,int ,int ,int ,int ,int ) ;
 int ar5211GetLowerUpperPcdacs (int ,int ,TYPE_1__ const*,int *,int *) ;
 int ar5211GetLowerUpperValues (int ,int ,int ,int *,int *) ;

uint16_t
ar5211GetScaledPower(uint16_t channel, uint16_t pcdacValue,
 const PCDACS_EEPROM *pSrcStruct)
{
 uint16_t powerValue;
 uint16_t lFreq, rFreq;
 uint16_t llPcdac, ulPcdac;
 uint16_t lrPcdac, urPcdac;
 uint16_t lPwr, uPwr;
 uint16_t lScaledPwr, rScaledPwr;

 if (ar5211FindValueInList(channel, pcdacValue, pSrcStruct, &powerValue))

  return powerValue;

 ar5211GetLowerUpperValues(channel, pSrcStruct->pChannelList,
  pSrcStruct->numChannels, &lFreq, &rFreq);
 ar5211GetLowerUpperPcdacs(pcdacValue, lFreq, pSrcStruct,
  &llPcdac, &ulPcdac);
 ar5211GetLowerUpperPcdacs(pcdacValue, rFreq, pSrcStruct,
  &lrPcdac, &urPcdac);


 ar5211FindValueInList(lFreq, llPcdac, pSrcStruct, &lPwr);
 ar5211FindValueInList(lFreq, ulPcdac, pSrcStruct, &uPwr);
 lScaledPwr = ar5211GetInterpolatedValue(pcdacValue,
    llPcdac, ulPcdac, lPwr, uPwr, 0);

 ar5211FindValueInList(rFreq, lrPcdac, pSrcStruct, &lPwr);
 ar5211FindValueInList(rFreq, urPcdac, pSrcStruct, &uPwr);
 rScaledPwr = ar5211GetInterpolatedValue(pcdacValue,
    lrPcdac, urPcdac, lPwr, uPwr, 0);

 return ar5211GetInterpolatedValue(channel, lFreq, rFreq,
  lScaledPwr, rScaledPwr, 0);
}
