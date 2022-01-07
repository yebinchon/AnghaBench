
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int32 ;
typedef int float64 ;



int32 syst_float64_to_int32_round_to_zero( float64 a )
{

    return *( (double *) &a );

}
