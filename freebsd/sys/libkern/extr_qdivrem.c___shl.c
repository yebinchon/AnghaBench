
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int digit ;


 int HALF_BITS ;
 int LHALF (int) ;

__attribute__((used)) static void
__shl(digit *p, int len, int sh)
{
 int i;

 for (i = 0; i < len; i++)
  p[i] = LHALF(p[i] << sh) | (p[i + 1] >> (HALF_BITS - sh));
 p[i] = LHALF(p[i] << sh);
}
