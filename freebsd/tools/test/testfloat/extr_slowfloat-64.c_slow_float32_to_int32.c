
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int float32 ;


 int float32ToFloatX (int ) ;
 int floatXToInt32 (int ) ;

int32 slow_float32_to_int32( float32 a )
{

    return floatXToInt32( float32ToFloatX( a ) );

}
