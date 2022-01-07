
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;


 int fpsetround (int ) ;

void syst_float_set_rounding_mode( int8 roundingMode )
{

    (void) fpsetround( roundingMode );

}
