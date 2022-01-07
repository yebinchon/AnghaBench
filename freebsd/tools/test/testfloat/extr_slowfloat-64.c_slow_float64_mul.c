
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int float64ToFloatX (int ) ;
 int floatXMul (int ,int ) ;
 int floatXToFloat64 (int ) ;

float64 slow_float64_mul( float64 a, float64 b )
{

    return
        floatXToFloat64(
            floatXMul( float64ToFloatX( a ), float64ToFloatX( b ) ) );

}
