
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8 ;
struct TYPE_5__ {int a0; scalar_t__ a1; } ;
struct TYPE_6__ {int exp; TYPE_1__ sig; int sign; } ;
typedef TYPE_2__ floatX ;
typedef scalar_t__ flag ;


 int LIT64 (int) ;
 int float_flag_inexact ;
 int float_flag_underflow ;




 int slow_float_exception_flags ;
 int slow_float_rounding_mode ;

__attribute__((used)) static floatX roundFloatXTo53( flag isTiny, floatX zx )
{
    int8 roundBits;

    zx.sig.a0 |= ( zx.sig.a1 != 0 );
    zx.sig.a1 = 0;
    roundBits = zx.sig.a0 & 7;
    zx.sig.a0 -= roundBits;
    if ( roundBits ) {
        slow_float_exception_flags |= float_flag_inexact;
        if ( isTiny ) slow_float_exception_flags |= float_flag_underflow;
        switch ( slow_float_rounding_mode ) {
         case 130:
            if ( roundBits < 4 ) goto noIncrement;
            if ( ( roundBits == 4 ) && ! ( zx.sig.a0 & 8 ) ) goto noIncrement;
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
        zx.sig.a0 += 8;
        if ( zx.sig.a0 == LIT64( 0x0100000000000000 ) ) {
            zx.sig.a0 = LIT64( 0x0080000000000000 );
            ++zx.exp;
        }
    }
 noIncrement:
    return zx;

}
