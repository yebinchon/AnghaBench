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
typedef  int int8 ;
typedef  int fexcept_t ;

/* Variables and functions */
 int /*<<< orphan*/  FE_ALL_EXCEPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 

int8 FUNC2( void )
{
    fexcept_t flags;

    FUNC1(&flags, FE_ALL_EXCEPT);
    FUNC0(FE_ALL_EXCEPT);
    return (flags >> 5);
}