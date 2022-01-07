
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;



float32 syst_float32_sub( float32 a, float32 b )
{
    float32 z;

    *( (float *) &z ) = *( (float *) &a ) - *( (float *) &b );
    return z;

}
