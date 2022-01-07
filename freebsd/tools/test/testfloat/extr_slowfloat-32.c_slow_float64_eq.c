
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float64 ;
typedef int flag ;


 int float64ToFloatX (int ) ;
 int floatXEq (int ,int ) ;

flag slow_float64_eq( float64 a, float64 b )
{

    return floatXEq( float64ToFloatX( a ), float64ToFloatX( b ) );

}
