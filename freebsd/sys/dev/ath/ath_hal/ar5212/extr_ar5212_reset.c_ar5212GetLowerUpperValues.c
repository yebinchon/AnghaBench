
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 int AH_FALSE ;
 int EEP_DELTA ;
 int EEP_SCALE ;
 int HALASSERT (int ) ;
 int udiff (int,scalar_t__) ;

void
ar5212GetLowerUpperValues(uint16_t v, uint16_t *lp, uint16_t listSize,
                          uint16_t *vlo, uint16_t *vhi)
{
 uint32_t target = v * EEP_SCALE;
 uint16_t *ep = lp+listSize;




 if (target < (uint32_t)(lp[0] * EEP_SCALE - EEP_DELTA)) {
  *vlo = *vhi = lp[0];
  return;
 }
 if (target > (uint32_t)(ep[-1] * EEP_SCALE + EEP_DELTA)) {
  *vlo = *vhi = ep[-1];
  return;
 }


 for (; lp < ep; lp++) {




  if (udiff(lp[0] * EEP_SCALE, target) < EEP_DELTA) {
   *vlo = *vhi = lp[0];
   return;
  }




  if (target < (uint32_t)(lp[1] * EEP_SCALE - EEP_DELTA)) {
   *vlo = lp[0];
   *vhi = lp[1];
   return;
  }
 }
 HALASSERT(AH_FALSE);
}
