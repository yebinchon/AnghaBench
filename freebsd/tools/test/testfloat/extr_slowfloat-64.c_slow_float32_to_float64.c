
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXToFloat64 (int ) ;

float64 slow_float32_to_float64( float32 a )
{

    return floatXToFloat64( float32ToFloatX( a ) );

}
