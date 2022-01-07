
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mii_bitbang_ops_t ;
typedef int device_t ;


 int MDC ;
 int MDIRPHY ;
 int MDO ;
 int MWRITE (int) ;

__attribute__((used)) static void
mii_bitbang_sendbits(device_t dev, mii_bitbang_ops_t ops, uint32_t data,
    int nbits)
{
 int i;
 uint32_t v;

 v = MDIRPHY;
 MWRITE(v);

 for (i = 1 << (nbits - 1); i != 0; i >>= 1) {
  if (data & i)
   v |= MDO;
  else
   v &= ~MDO;
  MWRITE(v);
  MWRITE(v | MDC);
  MWRITE(v);
 }
}
