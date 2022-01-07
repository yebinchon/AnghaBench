
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int a1; int a0; } ;
struct TYPE_6__ {TYPE_1__ sig; int exp; int sign; } ;
typedef TYPE_2__ floatX ;
typedef scalar_t__ flag ;


 int float_flag_inexact ;
 int float_flag_underflow ;




 int slow_float_exception_flags ;
 int slow_float_rounding_mode ;

__attribute__((used)) static floatX roundFloatXTo24( flag isTiny, floatX zx )
{

    if ( zx.sig.a1 ) {
        slow_float_exception_flags |= float_flag_inexact;
        if ( isTiny ) slow_float_exception_flags |= float_flag_underflow;
        switch ( slow_float_rounding_mode ) {
         case 130:
            if ( zx.sig.a1 < 0x80000000 ) goto noIncrement;
            if ( ( zx.sig.a1 == 0x80000000 ) && ! ( zx.sig.a0 & 1 ) ) {
                goto noIncrement;
            }
            break;
         case 129:
            goto noIncrement;
         case 131:
            if ( ! zx.sign ) goto noIncrement;
            break;
         case 128:
            if ( zx.sign ) goto noIncrement;
            break;
        }
        ++zx.sig.a0;
        if ( zx.sig.a0 == 0x01000000 ) {
            zx.sig.a0 = 0x00800000;
            ++zx.exp;
        }
    }
 noIncrement:
    zx.sig.a1 = 0;
    return zx;

}
