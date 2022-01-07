
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int float64 ;


 int floatXToFloat64 (int ) ;
 int int32ToFloatX (int ) ;

float64 slow_int32_to_float64( int32 a )
{

    return floatXToFloat64( int32ToFloatX( a ) );

}
