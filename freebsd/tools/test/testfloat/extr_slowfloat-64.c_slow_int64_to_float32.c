
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int float32 ;


 int floatXToFloat32 (int ) ;
 int int64ToFloatX (int ) ;

float32 slow_int64_to_float32( int64 a )
{

    return floatXToFloat32( int64ToFloatX( a ) );

}
