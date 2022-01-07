
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ int32_t ;


 int const EEP_DELTA ;
 int EEP_SCALE ;
 int const abs (scalar_t__) ;

void
ar5211GetLowerUpperValues(uint16_t value,
 const uint16_t *pList, uint16_t listSize,
 uint16_t *pLowerValue, uint16_t *pUpperValue)
{
 const uint16_t listEndValue = *(pList + listSize - 1);
 uint32_t target = value * EEP_SCALE;
 int i;





 if (target < (uint32_t)(*pList * EEP_SCALE - EEP_DELTA)) {
  *pLowerValue = *pList;
  *pUpperValue = *pList;
  return;
 }





 if (target > (uint32_t)(listEndValue * EEP_SCALE + EEP_DELTA)) {
  *pLowerValue = listEndValue;
  *pUpperValue = listEndValue;
  return;
 }


 for (i = 0; i < listSize; i++) {




  if (abs(pList[i] * EEP_SCALE - (int32_t) target) < EEP_DELTA) {
   *pLowerValue = pList[i];
   *pUpperValue = pList[i];
   return;
  }





  if (target < (uint32_t)(pList[i + 1] * EEP_SCALE - EEP_DELTA)) {
   *pLowerValue = pList[i];
   *pUpperValue = pList[i + 1];
   return;
  }
 }
}
