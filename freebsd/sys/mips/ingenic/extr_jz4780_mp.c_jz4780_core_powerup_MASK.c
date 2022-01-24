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
 scalar_t__ JZ_CGU_BASE ; 
 scalar_t__ JZ_LPCR ; 
 int LPCR_PD_SCPU ; 
 int LPCR_SCPUS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint32_t reg;

	reg = FUNC0(JZ_CGU_BASE + JZ_LPCR);
	reg &= ~LPCR_PD_SCPU;
	FUNC1(JZ_CGU_BASE + JZ_LPCR, reg);
	do {
		reg = FUNC0(JZ_CGU_BASE + JZ_LPCR);
	} while ((reg & LPCR_SCPUS) != 0);
}