
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXToInt64 (int ) ;

int64 slow_float32_to_int64( float32 a )
{

    return floatXToInt64( float32ToFloatX( a ) );

}
