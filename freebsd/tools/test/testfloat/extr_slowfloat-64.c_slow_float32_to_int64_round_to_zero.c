
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int int64 ;
typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXToInt64 (int ) ;
 int float_round_to_zero ;
 int slow_float_rounding_mode ;

int64 slow_float32_to_int64_round_to_zero( float32 a )
{
    int8 savedRoundingMode;
    int64 z;

    savedRoundingMode = slow_float_rounding_mode;
    slow_float_rounding_mode = float_round_to_zero;
    z = floatXToInt64( float32ToFloatX( a ) );
    slow_float_rounding_mode = savedRoundingMode;
    return z;

}
