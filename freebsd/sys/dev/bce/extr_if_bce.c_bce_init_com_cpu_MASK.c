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
struct fw_info {int /*<<< orphan*/  rodata; scalar_t__ rodata_index; int /*<<< orphan*/  rodata_len; int /*<<< orphan*/  rodata_addr; int /*<<< orphan*/  bss; scalar_t__ bss_index; int /*<<< orphan*/  bss_len; int /*<<< orphan*/  bss_addr; int /*<<< orphan*/  sbss; scalar_t__ sbss_index; int /*<<< orphan*/  sbss_len; int /*<<< orphan*/  sbss_addr; int /*<<< orphan*/  data; scalar_t__ data_index; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data_addr; int /*<<< orphan*/  text; scalar_t__ text_index; int /*<<< orphan*/  text_len; int /*<<< orphan*/  text_addr; int /*<<< orphan*/  start_addr; int /*<<< orphan*/  ver_fix; int /*<<< orphan*/  ver_minor; int /*<<< orphan*/  ver_major; } ;
struct cpu_reg {int state_value_clear; int mips_view_base; int /*<<< orphan*/  spad_base; int /*<<< orphan*/  bp; int /*<<< orphan*/  inst; int /*<<< orphan*/  pc; int /*<<< orphan*/  evmask; int /*<<< orphan*/  gpr0; int /*<<< orphan*/  state; int /*<<< orphan*/  mode_value_sstep; int /*<<< orphan*/  mode_value_halt; int /*<<< orphan*/  mode; } ;
struct bce_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 int /*<<< orphan*/  BCE_COM_CPU_EVENT_MASK ; 
 int /*<<< orphan*/  BCE_COM_CPU_HW_BREAKPOINT ; 
 int /*<<< orphan*/  BCE_COM_CPU_INSTRUCTION ; 
 int /*<<< orphan*/  BCE_COM_CPU_MODE ; 
 int /*<<< orphan*/  BCE_COM_CPU_MODE_SOFT_HALT ; 
 int /*<<< orphan*/  BCE_COM_CPU_MODE_STEP_ENA ; 
 int /*<<< orphan*/  BCE_COM_CPU_PROGRAM_COUNTER ; 
 int /*<<< orphan*/  BCE_COM_CPU_REG_FILE ; 
 int /*<<< orphan*/  BCE_COM_CPU_STATE ; 
 int /*<<< orphan*/  BCE_COM_SCRATCH ; 
 int /*<<< orphan*/  BCE_INFO_RESET ; 
 int /*<<< orphan*/  BCE_VERBOSE_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  bce_COM_b06FwBss ; 
 int /*<<< orphan*/  bce_COM_b06FwBssAddr ; 
 int /*<<< orphan*/  bce_COM_b06FwBssLen ; 
 int /*<<< orphan*/  bce_COM_b06FwData ; 
 int /*<<< orphan*/  bce_COM_b06FwDataAddr ; 
 int /*<<< orphan*/  bce_COM_b06FwDataLen ; 
 int /*<<< orphan*/  bce_COM_b06FwReleaseFix ; 
 int /*<<< orphan*/  bce_COM_b06FwReleaseMajor ; 
 int /*<<< orphan*/  bce_COM_b06FwReleaseMinor ; 
 int /*<<< orphan*/  bce_COM_b06FwRodata ; 
 int /*<<< orphan*/  bce_COM_b06FwRodataAddr ; 
 int /*<<< orphan*/  bce_COM_b06FwRodataLen ; 
 int /*<<< orphan*/  bce_COM_b06FwSbss ; 
 int /*<<< orphan*/  bce_COM_b06FwSbssAddr ; 
 int /*<<< orphan*/  bce_COM_b06FwSbssLen ; 
 int /*<<< orphan*/  bce_COM_b06FwStartAddr ; 
 int /*<<< orphan*/  bce_COM_b06FwText ; 
 int /*<<< orphan*/  bce_COM_b06FwTextAddr ; 
 int /*<<< orphan*/  bce_COM_b06FwTextLen ; 
 int /*<<< orphan*/  bce_COM_b09FwBss ; 
 int /*<<< orphan*/  bce_COM_b09FwBssAddr ; 
 int /*<<< orphan*/  bce_COM_b09FwBssLen ; 
 int /*<<< orphan*/  bce_COM_b09FwData ; 
 int /*<<< orphan*/  bce_COM_b09FwDataAddr ; 
 int /*<<< orphan*/  bce_COM_b09FwDataLen ; 
 int /*<<< orphan*/  bce_COM_b09FwReleaseFix ; 
 int /*<<< orphan*/  bce_COM_b09FwReleaseMajor ; 
 int /*<<< orphan*/  bce_COM_b09FwReleaseMinor ; 
 int /*<<< orphan*/  bce_COM_b09FwRodata ; 
 int /*<<< orphan*/  bce_COM_b09FwRodataAddr ; 
 int /*<<< orphan*/  bce_COM_b09FwRodataLen ; 
 int /*<<< orphan*/  bce_COM_b09FwSbss ; 
 int /*<<< orphan*/  bce_COM_b09FwSbssAddr ; 
 int /*<<< orphan*/  bce_COM_b09FwSbssLen ; 
 int /*<<< orphan*/  bce_COM_b09FwStartAddr ; 
 int /*<<< orphan*/  bce_COM_b09FwText ; 
 int /*<<< orphan*/  bce_COM_b09FwTextAddr ; 
 int /*<<< orphan*/  bce_COM_b09FwTextLen ; 
 int /*<<< orphan*/  FUNC4 (struct bce_softc*,struct cpu_reg*,struct fw_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*,struct cpu_reg*) ; 

__attribute__((used)) static void
FUNC6(struct bce_softc *sc)
{
	struct cpu_reg cpu_reg;
	struct fw_info fw;

	FUNC1(BCE_VERBOSE_RESET);

	cpu_reg.mode = BCE_COM_CPU_MODE;
	cpu_reg.mode_value_halt = BCE_COM_CPU_MODE_SOFT_HALT;
	cpu_reg.mode_value_sstep = BCE_COM_CPU_MODE_STEP_ENA;
	cpu_reg.state = BCE_COM_CPU_STATE;
	cpu_reg.state_value_clear = 0xffffff;
	cpu_reg.gpr0 = BCE_COM_CPU_REG_FILE;
	cpu_reg.evmask = BCE_COM_CPU_EVENT_MASK;
	cpu_reg.pc = BCE_COM_CPU_PROGRAM_COUNTER;
	cpu_reg.inst = BCE_COM_CPU_INSTRUCTION;
	cpu_reg.bp = BCE_COM_CPU_HW_BREAKPOINT;
	cpu_reg.spad_base = BCE_COM_SCRATCH;
	cpu_reg.mips_view_base = 0x8000000;

	if (FUNC0(sc) == BCE_CHIP_NUM_5709) {
		fw.ver_major = bce_COM_b09FwReleaseMajor;
		fw.ver_minor = bce_COM_b09FwReleaseMinor;
		fw.ver_fix = bce_COM_b09FwReleaseFix;
		fw.start_addr = bce_COM_b09FwStartAddr;

		fw.text_addr = bce_COM_b09FwTextAddr;
		fw.text_len = bce_COM_b09FwTextLen;
		fw.text_index = 0;
		fw.text = bce_COM_b09FwText;

		fw.data_addr = bce_COM_b09FwDataAddr;
		fw.data_len = bce_COM_b09FwDataLen;
		fw.data_index = 0;
		fw.data = bce_COM_b09FwData;

		fw.sbss_addr = bce_COM_b09FwSbssAddr;
		fw.sbss_len = bce_COM_b09FwSbssLen;
		fw.sbss_index = 0;
		fw.sbss = bce_COM_b09FwSbss;

		fw.bss_addr = bce_COM_b09FwBssAddr;
		fw.bss_len = bce_COM_b09FwBssLen;
		fw.bss_index = 0;
		fw.bss = bce_COM_b09FwBss;

		fw.rodata_addr = bce_COM_b09FwRodataAddr;
		fw.rodata_len = bce_COM_b09FwRodataLen;
		fw.rodata_index = 0;
		fw.rodata = bce_COM_b09FwRodata;
	} else {
		fw.ver_major = bce_COM_b06FwReleaseMajor;
		fw.ver_minor = bce_COM_b06FwReleaseMinor;
		fw.ver_fix = bce_COM_b06FwReleaseFix;
		fw.start_addr = bce_COM_b06FwStartAddr;

		fw.text_addr = bce_COM_b06FwTextAddr;
		fw.text_len = bce_COM_b06FwTextLen;
		fw.text_index = 0;
		fw.text = bce_COM_b06FwText;

		fw.data_addr = bce_COM_b06FwDataAddr;
		fw.data_len = bce_COM_b06FwDataLen;
		fw.data_index = 0;
		fw.data = bce_COM_b06FwData;

		fw.sbss_addr = bce_COM_b06FwSbssAddr;
		fw.sbss_len = bce_COM_b06FwSbssLen;
		fw.sbss_index = 0;
		fw.sbss = bce_COM_b06FwSbss;

		fw.bss_addr = bce_COM_b06FwBssAddr;
		fw.bss_len = bce_COM_b06FwBssLen;
		fw.bss_index = 0;
		fw.bss = bce_COM_b06FwBss;

		fw.rodata_addr = bce_COM_b06FwRodataAddr;
		fw.rodata_len = bce_COM_b06FwRodataLen;
		fw.rodata_index = 0;
		fw.rodata = bce_COM_b06FwRodata;
	}

	FUNC3(sc, BCE_INFO_RESET, "Loading COM firmware.\n");
	FUNC4(sc, &cpu_reg, &fw);
	FUNC5(sc, &cpu_reg);

	FUNC2(BCE_VERBOSE_RESET);
}