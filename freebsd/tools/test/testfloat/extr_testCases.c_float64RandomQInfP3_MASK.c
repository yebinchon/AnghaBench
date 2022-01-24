#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  size_t int8 ;
typedef  int /*<<< orphan*/  float64 ;
struct TYPE_2__ {int low; int high; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int float64NumP2 ; 
 int float64NumQInfWeightMasks ; 
 TYPE_1__* float64P2 ; 
 int* float64QInfWeightMasks ; 
 int* float64QInfWeightOffsets ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static float64 FUNC3( void )
{
    int8 sigNum1, sigNum2;
    uint32 sig1Low, sig2Low, zLow;
    int8 weightMaskNum;
    float64 z;

    sigNum1 = FUNC2() % float64NumP2;
    sigNum2 = FUNC2() % float64NumP2;
    sig1Low = float64P2[ sigNum1 ].low;
    sig2Low = float64P2[ sigNum2 ].low;
    zLow = sig1Low + sig2Low;
    weightMaskNum = FUNC2() % float64NumQInfWeightMasks;
    FUNC0(
        z,
          ( ( (uint32) ( FUNC2() & 1 ) )<<31 )
        | (   (   ( ( (uint32) ( FUNC1() & 0xFFF ) )<<20 )
                & float64QInfWeightMasks[ weightMaskNum ] )
            + float64QInfWeightOffsets[ weightMaskNum ]
          )
        | (   (   float64P2[ sigNum1 ].high
                + float64P2[ sigNum2 ].high
                + ( zLow < sig1Low )
              )
            & 0x000FFFFF
          ),
        zLow
    );
    return z;

}