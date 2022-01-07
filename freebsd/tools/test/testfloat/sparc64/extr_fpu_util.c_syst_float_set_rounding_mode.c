
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int8 ;
struct TYPE_2__ {int uf_fsr; } ;


 int FSR_RD (unsigned int) ;
 int FSR_RD_MASK ;
 TYPE_1__ utf ;

void syst_float_set_rounding_mode(int8 roundingMode)
{

 utf.uf_fsr &= ~FSR_RD_MASK;
 utf.uf_fsr |= FSR_RD((unsigned int)roundingMode & 0x03);
}
