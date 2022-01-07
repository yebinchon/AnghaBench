
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ int16_t ;



__attribute__((used)) static int16_t
interpolate_signed(uint16_t target, uint16_t srcLeft, uint16_t srcRight,
 int16_t targetLeft, int16_t targetRight)
{
 int16_t rv;

 if (srcRight != srcLeft) {
  rv = ((target - srcLeft)*targetRight +
        (srcRight - target)*targetLeft) / (srcRight - srcLeft);
 } else {
  rv = targetLeft;
 }
 return rv;
}
