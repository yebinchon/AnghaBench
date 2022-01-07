
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int fexcept_t ;


 int FE_ALL_EXCEPT ;
 int feclearexcept (int ) ;
 int fegetexceptflag (int*,int ) ;

int8 syst_float_flags_clear( void )
{
    fexcept_t flags;

    fegetexceptflag(&flags, FE_ALL_EXCEPT);
    feclearexcept(FE_ALL_EXCEPT);
    return (flags >> 5);
}
