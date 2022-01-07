
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int COEFF_SCALE_SHIFT ;
 int KASSERT (int,char*) ;

void
otus_get_delta_slope(uint32_t coeff, uint32_t *exponent, uint32_t *mantissa)
{

 uint32_t exp, man;


 for (exp = 31; exp > 0; exp--)
  if (coeff & (1 << exp))
   break;
 KASSERT(exp != 0, ("exp"));
 exp = 14 - (exp - 24);


 man = coeff + (1 << (24 - exp - 1));

 *mantissa = man >> (24 - exp);
 *exponent = exp - 16;

}
