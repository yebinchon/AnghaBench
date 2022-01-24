#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int8 ;
struct TYPE_5__ {int a0; scalar_t__ a1; } ;
struct TYPE_6__ {int /*<<< orphan*/  exp; TYPE_1__ sig; int /*<<< orphan*/  sign; } ;
typedef  TYPE_2__ floatX ;
typedef  scalar_t__ flag ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  float_flag_inexact ; 
 int /*<<< orphan*/  float_flag_underflow ; 
#define  float_round_down 131 
#define  float_round_nearest_even 130 
#define  float_round_to_zero 129 
#define  float_round_up 128 
 int /*<<< orphan*/  slow_float_exception_flags ; 
 int slow_float_rounding_mode ; 

__attribute__((used)) static floatX FUNC1( flag isTiny, floatX zx )
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
         case float_round_nearest_even:
            if ( roundBits < 4 ) goto noIncrement;
            if ( ( roundBits == 4 ) && ! ( zx.sig.a0 & 8 ) ) goto noIncrement;
            break;
         case float_round_to_zero:
            goto noIncrement;
         case float_round_down:
            if ( ! zx.sign ) goto noIncrement;
            break;
         case float_round_up:
            if ( zx.sign ) goto noIncrement;
            break;
        }
        zx.sig.a0 += 8;
        if ( zx.sig.a0 == FUNC0( 0x0100000000000000 ) ) {
            zx.sig.a0 = FUNC0( 0x0080000000000000 );
            ++zx.exp;
        }
    }
 noIncrement:
    return zx;

}