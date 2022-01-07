
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXRem (int ,int ) ;
 int floatXToFloat32 (int ) ;

float32 slow_float32_rem( float32 a, float32 b )
{

    return
        floatXToFloat32(
            floatXRem( float32ToFloatX( a ), float32ToFloatX( b ) ) );

}
