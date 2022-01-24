#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int high; } ;
typedef  TYPE_1__ float64 ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ) ; 

float64 FUNC4( float64 a, float64 b )
{

#ifdef BITS64
    b ^= LIT64( 0x8000000000000000 );
#else
    b.high ^= 0x80000000;
#endif
    return
        FUNC3(
            FUNC2( FUNC1( a ), FUNC1( b ) ) );

}