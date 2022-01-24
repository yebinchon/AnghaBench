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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ AR5315_SYSREG_BASE ; 
 scalar_t__ AR5315_SYSREG_COLDRESET ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static int
FUNC1(uint32_t mask)
{
	uint32_t reg;

	reg = FUNC0(AR5315_SYSREG_BASE + AR5315_SYSREG_COLDRESET);
	return ((reg & mask) == mask);
}