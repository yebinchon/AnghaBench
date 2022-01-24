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
typedef  int uint16_t ;
struct emu_sc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMU_A2_PTR ; 
 int /*<<< orphan*/  EMU_DATA2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct emu_sc_info*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC3(struct emu_sc_info *sc, uint16_t chn, uint16_t reg, uint32_t data)
{

	FUNC0();
	FUNC2(sc, EMU_A2_PTR, (reg << 16) | chn, 4);
	FUNC2(sc, EMU_DATA2, data, 4);
	FUNC1();
}