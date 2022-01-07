
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int float32 ;



float32 syst_float64_to_float32( float64 a )
{
    float32 z;

    *( (float *) &z ) = *( (double *) &a );
    return z;

}
