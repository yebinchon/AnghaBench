
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;



float64 syst_float64_mul( float64 a, float64 b )
{
    float64 z;

    *( (double *) &z ) = *( (double *) &a ) * *( (double *) &b );
    return z;

}
