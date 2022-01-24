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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIBA_CFG0_ADMATCH0 ; 
 int /*<<< orphan*/  SIBA_CFG0_ADMATCH1 ; 
 int /*<<< orphan*/  SIBA_CFG0_ADMATCH2 ; 
 int /*<<< orphan*/  SIBA_CFG0_ADMATCH3 ; 

u_int
FUNC1(uint8_t addrspace)
{
	switch (addrspace) {
	case 0:
		return FUNC0(SIBA_CFG0_ADMATCH0);
	case 1:
		return FUNC0(SIBA_CFG0_ADMATCH1);
	case 2:
		return FUNC0(SIBA_CFG0_ADMATCH2);
	case 3:
		return FUNC0(SIBA_CFG0_ADMATCH3);
	default:
		return (0);
	}
}