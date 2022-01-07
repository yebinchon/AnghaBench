
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int high; } ;
typedef TYPE_1__ float64 ;


 TYPE_1__ LIT64 (int) ;
 int float64ToFloatX (TYPE_1__) ;
 int floatXAdd (int ,int ) ;
 TYPE_1__ floatXToFloat64 (int ) ;

float64 slow_float64_sub( float64 a, float64 b )
{




    b.high ^= 0x80000000;

    return
        floatXToFloat64(
            floatXAdd( float64ToFloatX( a ), float64ToFloatX( b ) ) );

}
