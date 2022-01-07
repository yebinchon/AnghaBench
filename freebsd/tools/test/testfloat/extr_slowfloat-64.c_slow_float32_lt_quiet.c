
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef int flag ;


 int float32ToFloatX (int ) ;
 int floatXLt (int ,int ) ;

flag slow_float32_lt_quiet( float32 a, float32 b )
{

    return floatXLt( float32ToFloatX( a ), float32ToFloatX( b ) );

}
