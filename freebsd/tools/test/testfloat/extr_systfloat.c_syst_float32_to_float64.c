
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int float32 ;



float64 syst_float32_to_float64( float32 a )
{
    float64 z;

    *( (double *) &z ) = *( (float *) &a );
    return z;

}
