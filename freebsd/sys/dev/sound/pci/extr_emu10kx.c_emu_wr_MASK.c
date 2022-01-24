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
typedef  int /*<<< orphan*/  uint32_t ;
struct emu_sc_info {int dummy; } ;

/* Variables and functions */
 unsigned int EMU_A2_PTR ; 
 unsigned int EMU_PTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_sc_info*,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 

void
FUNC2(struct emu_sc_info *sc, unsigned int regno, uint32_t data, unsigned int size)
{
	FUNC0(regno != EMU_PTR, ("emu_wr: attempt to write to EMU_PTR"));
	FUNC0(regno != EMU_A2_PTR, ("emu_wr: attempt to write to EMU_A2_PTR"));

	FUNC1(sc, regno, data, size);
}