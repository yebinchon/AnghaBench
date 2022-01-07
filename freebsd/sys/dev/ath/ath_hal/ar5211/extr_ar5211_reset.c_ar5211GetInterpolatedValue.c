
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ int16_t ;
typedef scalar_t__ HAL_BOOL ;


 scalar_t__ EEP_SCALE ;

uint16_t
ar5211GetInterpolatedValue(uint16_t target,
 uint16_t srcLeft, uint16_t srcRight,
 uint16_t targetLeft, uint16_t targetRight,
 HAL_BOOL scaleUp)
{
 uint16_t rv;
 int16_t lRatio;
 uint16_t scaleValue = EEP_SCALE;


 if ((targetLeft * targetRight) == 0)
  return 0;
 if (scaleUp)
  scaleValue = 1;

 if (srcRight != srcLeft) {




  lRatio = (target - srcLeft) * EEP_SCALE / (srcRight - srcLeft);
  if (lRatio < 0) {

      rv = targetLeft * (scaleUp ? EEP_SCALE : 1);
  } else if (lRatio > EEP_SCALE) {

      rv = targetRight * (scaleUp ? EEP_SCALE : 1);
  } else {
   rv = (lRatio * targetRight + (EEP_SCALE - lRatio) *
     targetLeft) / scaleValue;
  }
 } else {
  rv = targetLeft;
  if (scaleUp)
   rv *= EEP_SCALE;
 }
 return rv;
}
