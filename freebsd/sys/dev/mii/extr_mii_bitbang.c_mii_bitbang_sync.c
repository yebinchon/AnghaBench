
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

void
mii_bitbang_sync(device_t dev, mii_bitbang_ops_t ops)
{
 int i;
 uint32_t v;

 v = MDIRPHY | MDO;

 MWRITE(v);
 for (i = 0; i < 32; i++) {
  MWRITE(v | MDC);
  MWRITE(v);
 }
}
