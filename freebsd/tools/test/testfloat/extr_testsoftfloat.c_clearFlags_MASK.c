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
typedef  scalar_t__ int8 ;

/* Variables and functions */
 scalar_t__ float_exception_flags ; 

int8 FUNC0( void )
{
    int8 flags;

    flags = float_exception_flags;
    float_exception_flags = 0;
    return flags;

}