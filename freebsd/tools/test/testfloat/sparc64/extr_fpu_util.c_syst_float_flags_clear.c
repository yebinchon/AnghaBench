
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int int8 ;
typedef int int32 ;
struct TYPE_2__ {int uf_fsr; } ;


 int FE_ALL_EXCEPT ;
 TYPE_1__ utf ;

int8 syst_float_flags_clear(void)
{
 int32 flags;

 flags = (utf.uf_fsr & FE_ALL_EXCEPT) >> 5;
 utf.uf_fsr &= ~(u_long)FE_ALL_EXCEPT;
 return (flags);
}
