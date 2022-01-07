
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef scalar_t__ int16_t ;


 scalar_t__ EEP_SCALE ;

__attribute__((used)) static u_int16_t
interpolate(u_int16_t target, u_int16_t srcLeft, u_int16_t srcRight,
 u_int16_t targetLeft, u_int16_t targetRight)
{
 u_int16_t rv;
 int16_t lRatio;


 if ((targetLeft * targetRight) == 0)
  return 0;

 if (srcRight != srcLeft) {




  lRatio = (target - srcLeft) * EEP_SCALE / (srcRight - srcLeft);
  if (lRatio < 0) {

      rv = targetLeft;
  } else if (lRatio > EEP_SCALE) {

      rv = targetRight;
  } else {
   rv = (lRatio * targetRight + (EEP_SCALE - lRatio) *
     targetLeft) / EEP_SCALE;
  }
 } else {
  rv = targetLeft;
 }
 return rv;
}
