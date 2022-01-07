
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXSqrt (int ) ;
 int floatXToFloat32 (int ) ;

float32 slow_float32_sqrt( float32 a )
{

    return floatXToFloat32( floatXSqrt( float32ToFloatX( a ) ) );

}
