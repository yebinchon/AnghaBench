
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ isNaN; } ;
typedef TYPE_1__ floatX ;
typedef int float64 ;
typedef int flag ;


 TYPE_1__ float64ToFloatX (int ) ;
 int floatXLt (TYPE_1__,TYPE_1__) ;
 int float_flag_invalid ;
 int slow_float_exception_flags ;

flag slow_float64_lt( float64 a, float64 b )
{
    floatX ax, bx;

    ax = float64ToFloatX( a );
    bx = float64ToFloatX( b );
    if ( ax.isNaN || bx.isNaN ) {
        slow_float_exception_flags |= float_flag_invalid;
    }
    return floatXLt( ax, bx );

}
