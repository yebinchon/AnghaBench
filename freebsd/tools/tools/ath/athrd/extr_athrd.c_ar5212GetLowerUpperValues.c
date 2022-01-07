
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;


 int EEP_DELTA ;
 int EEP_SCALE ;
 int abs (scalar_t__) ;

__attribute__((used)) static void
ar5212GetLowerUpperValues(u_int16_t v, u_int16_t *lp, u_int16_t listSize,
                          u_int16_t *vlo, u_int16_t *vhi)
{
 u_int32_t target = v * EEP_SCALE;
 u_int16_t *ep = lp+listSize;




 if (target < (u_int32_t)(lp[0] * EEP_SCALE - EEP_DELTA)) {
  *vlo = *vhi = lp[0];
  return;
 }
 if (target > (u_int32_t)(ep[-1] * EEP_SCALE + EEP_DELTA)) {
  *vlo = *vhi = ep[-1];
  return;
 }


 for (; lp < ep; lp++) {




  if (abs(lp[0] * EEP_SCALE - target) < EEP_DELTA) {
   *vlo = *vhi = lp[0];
   return;
  }




  if (target < (u_int32_t)(lp[1] * EEP_SCALE - EEP_DELTA)) {
   *vlo = lp[0];
   *vhi = lp[1];
   return;
  }
 }
}
