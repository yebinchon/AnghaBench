
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float int32 ;
typedef int float32 ;



int32 syst_float32_to_int32_round_to_zero( float32 a )
{

    return *( (float *) &a );

}
