
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int int32 ;
typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXToInt32 (int ) ;
 int float_round_to_zero ;
 int slow_float_rounding_mode ;

int32 slow_float32_to_int32_round_to_zero( float32 a )
{
    int8 savedRoundingMode;
    int32 z;

    savedRoundingMode = slow_float_rounding_mode;
    slow_float_rounding_mode = float_round_to_zero;
    z = floatXToInt32( float32ToFloatX( a ) );
    slow_float_rounding_mode = savedRoundingMode;
    return z;

}
