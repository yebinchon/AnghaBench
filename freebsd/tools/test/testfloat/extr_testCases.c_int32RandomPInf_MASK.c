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
typedef  int /*<<< orphan*/  sbits32 ;
typedef  size_t int8 ;
typedef  int /*<<< orphan*/  int32 ;

/* Variables and functions */
 size_t int32NumPInfWeightMasks ; 
 int* int32PInfWeightMasks ; 
 scalar_t__* int32PInfWeightOffsets ; 
 int FUNC0 () ; 
 size_t FUNC1 () ; 

__attribute__((used)) static int32 FUNC2( void )
{
    int8 weightMaskNum;

    weightMaskNum = FUNC1() % int32NumPInfWeightMasks;
    return
        (sbits32) (
              ( FUNC0() & int32PInfWeightMasks[ weightMaskNum ] )
            + int32PInfWeightOffsets[ weightMaskNum ]
        );

}