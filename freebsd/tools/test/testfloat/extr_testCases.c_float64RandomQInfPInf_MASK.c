#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32 ;
typedef  size_t int8 ;
typedef  int /*<<< orphan*/  float64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int float64NumQInfWeightMasks ; 
 int* float64QInfWeightMasks ; 
 int* float64QInfWeightOffsets ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static float64 FUNC4( void )
{
    int8 weightMaskNum;
    float64 z;

    weightMaskNum = FUNC3() % float64NumQInfWeightMasks;
    FUNC0(
        z,
          ( ( (uint32) ( FUNC3() & 1 ) )<<31 )
        | (   (   ( ( (uint32) ( FUNC1() & 0xFFF ) )<<20 )
                & float64QInfWeightMasks[ weightMaskNum ] )
            + float64QInfWeightOffsets[ weightMaskNum ]
          )
        | ( FUNC2() & 0x000FFFFF ),
        FUNC2()
    );
    return z;

}