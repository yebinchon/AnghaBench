
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;


 int float64ToFloatX (int ) ;
 int floatXSqrt (int ) ;
 int floatXToFloat64 (int ) ;

float64 slow_float64_sqrt( float64 a )
{

    return floatXToFloat64( floatXSqrt( float64ToFloatX( a ) ) );

}
