
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int float64ToFloatX (int ) ;
 int floatXRoundToInt (int ) ;
 int floatXToFloat64 (int ) ;

float64 slow_float64_round_to_int( float64 a )
{

    return floatXToFloat64( floatXRoundToInt( float64ToFloatX( a ) ) );

}
