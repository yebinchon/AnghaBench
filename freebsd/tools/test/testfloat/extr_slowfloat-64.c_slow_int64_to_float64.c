
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float64 ;


 int floatXToFloat64 (int ) ;
 int int64ToFloatX (int ) ;

float64 slow_int64_to_float64( int64 a )
{

    return floatXToFloat64( int64ToFloatX( a ) );

}
