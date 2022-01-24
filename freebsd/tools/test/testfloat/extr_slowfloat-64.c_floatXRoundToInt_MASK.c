#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_9__ {int a1; scalar_t__ a0; } ;
struct TYPE_8__ {int exp; scalar_t__ isZero; TYPE_2__ sig; scalar_t__ isInf; scalar_t__ isNaN; } ;
typedef  TYPE_1__ floatX ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ TRUE ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__) ; 
 TYPE_2__ FUNC1 (TYPE_2__,int) ; 

__attribute__((used)) static floatX FUNC2( floatX ax )
{
    int32 shiftCount, i;

    if ( ax.isNaN || ax.isInf ) return ax;
    shiftCount = 112 - ax.exp;
    if ( shiftCount <= 0 ) return ax;
    if ( 119 < shiftCount ) {
        ax.exp = 112;
        ax.sig.a1 = ! ax.isZero;
        ax.sig.a0 = 0;
    }
    else {
        while ( 0 < shiftCount ) {
            ax.sig = FUNC1( ax.sig, 1 );
            ++ax.exp;
            --shiftCount;
        }
    }
    ax = FUNC0( FALSE, ax );
    if ( ( ax.sig.a0 == 0 ) && ( ax.sig.a1 == 0 ) ) ax.isZero = TRUE;
    return ax;

}