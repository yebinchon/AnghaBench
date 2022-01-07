
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float64 ;


 int float64ToFloatX (int ) ;
 int floatXToInt64 (int ) ;

int64 slow_float64_to_int64( float64 a )
{

    return floatXToInt64( float64ToFloatX( a ) );

}
