
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float int32 ;
typedef int float32 ;



float32 syst_int32_to_float32( int32 a )
{
    float32 z;

    *( (float *) &z ) = a;
    return z;

}
