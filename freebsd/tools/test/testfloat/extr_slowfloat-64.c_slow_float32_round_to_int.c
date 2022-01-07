
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXRoundToInt (int ) ;
 int floatXToFloat32 (int ) ;

float32 slow_float32_round_to_int( float32 a )
{

    return floatXToFloat32( floatXRoundToInt( float32ToFloatX( a ) ) );

}
