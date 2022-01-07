
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ isNaN; } ;
typedef TYPE_1__ floatX ;
typedef int float32 ;
typedef int flag ;


 TYPE_1__ float32ToFloatX (int ) ;
 int floatXEq (TYPE_1__,TYPE_1__) ;
 int float_flag_invalid ;
 int slow_float_exception_flags ;

flag slow_float32_eq_signaling( float32 a, float32 b )
{
    floatX ax, bx;

    ax = float32ToFloatX( a );
    bx = float32ToFloatX( b );
    if ( ax.isNaN || bx.isNaN ) {
        slow_float_exception_flags |= float_flag_invalid;
    }
    return floatXEq( ax, bx );

}
