
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int int32_t ;



__attribute__((used)) static int
ugold_ds75_temp(uint8_t msb, uint8_t lsb)
{


 int32_t temp = (msb << 24) | ((lsb & 0xF0) << 16);
 return (((int64_t)temp * (int64_t)1000000LL) >> 24);
}
