
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int32 ;
typedef int float64 ;



float64 syst_int32_to_float64( int32 a )
{
    float64 z;

    *( (double *) &z ) = a;
    return z;

}
