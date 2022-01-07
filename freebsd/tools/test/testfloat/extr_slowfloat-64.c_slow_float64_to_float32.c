
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int float32 ;


 int float64ToFloatX (int ) ;
 int floatXToFloat32 (int ) ;

float32 slow_float64_to_float32( float64 a )
{

    return floatXToFloat32( float64ToFloatX( a ) );

}
