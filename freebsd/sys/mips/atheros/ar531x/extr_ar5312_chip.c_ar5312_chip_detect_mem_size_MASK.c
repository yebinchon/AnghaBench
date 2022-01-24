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
 int /*<<< orphan*/  AR5312_MEM_CFG1_BANK0 ; 
 int /*<<< orphan*/  AR5312_MEM_CFG1_BANK1 ; 
 scalar_t__ AR5312_SDRAMCTL_BASE ; 
 scalar_t__ AR5312_SDRAMCTL_MEM_CFG1 ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int realmem ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint32_t memsize;
	uint32_t memcfg, bank0, bank1;

	/*
	 * Determine the memory size as established by system
	 * firmware.
	 *
	 * NB: we allow compile time override
	 */
	memcfg = FUNC0(AR5312_SDRAMCTL_BASE + AR5312_SDRAMCTL_MEM_CFG1);
	bank0 = FUNC1(memcfg, AR5312_MEM_CFG1_BANK0);
	bank1 = FUNC1(memcfg, AR5312_MEM_CFG1_BANK1);

	memsize = (bank0 ? (1 << (bank0 + 1)) : 0) +
	    (bank1 ? (1 << (bank1 + 1)) : 0);
	memsize <<= 20;

	realmem = memsize;
}