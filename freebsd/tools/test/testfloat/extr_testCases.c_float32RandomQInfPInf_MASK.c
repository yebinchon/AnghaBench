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
typedef  int float32 ;

/* Variables and functions */
 int float32NumQInfWeightMasks ; 
 int* float32QInfWeightMasks ; 
 int* float32QInfWeightOffsets ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static float32 FUNC3( void )
{
    int8 weightMaskNum;

    weightMaskNum = FUNC2() % float32NumQInfWeightMasks;
    return
          ( ( (uint32) ( FUNC2() & 1 ) )<<31 )
        | (   (   ( ( (uint32) ( FUNC0() & 0x1FF ) )<<23 )
                & float32QInfWeightMasks[ weightMaskNum ] )
            + float32QInfWeightOffsets[ weightMaskNum ]
          )
        | ( FUNC1() & 0x007FFFFF );

}