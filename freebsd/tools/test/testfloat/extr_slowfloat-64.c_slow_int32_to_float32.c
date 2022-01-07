
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int float32 ;


 int floatXToFloat32 (int ) ;
 int int32ToFloatX (int ) ;

float32 slow_int32_to_float32( int32 a )
{

    return floatXToFloat32( int32ToFloatX( a ) );

}
