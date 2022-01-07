
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_info {int rodata; scalar_t__ rodata_index; int rodata_len; int rodata_addr; int bss; scalar_t__ bss_index; int bss_len; int bss_addr; int sbss; scalar_t__ sbss_index; int sbss_len; int sbss_addr; int data; scalar_t__ data_index; int data_len; int data_addr; int text; scalar_t__ text_index; int text_len; int text_addr; int start_addr; int ver_fix; int ver_minor; int ver_major; } ;
struct cpu_reg {int state_value_clear; int mips_view_base; int spad_base; int bp; int inst; int pc; int evmask; int gpr0; int state; int mode_value_sstep; int mode_value_halt; int mode; } ;
struct bce_softc {int dummy; } ;


 scalar_t__ BCE_CHIP_NUM (struct bce_softc*) ;
 scalar_t__ BCE_CHIP_NUM_5709 ;
 int BCE_INFO_RESET ;
 int BCE_TXP_CPU_EVENT_MASK ;
 int BCE_TXP_CPU_HW_BREAKPOINT ;
 int BCE_TXP_CPU_INSTRUCTION ;
 int BCE_TXP_CPU_MODE ;
 int BCE_TXP_CPU_MODE_SOFT_HALT ;
 int BCE_TXP_CPU_MODE_STEP_ENA ;
 int BCE_TXP_CPU_PROGRAM_COUNTER ;
 int BCE_TXP_CPU_REG_FILE ;
 int BCE_TXP_CPU_STATE ;
 int BCE_TXP_SCRATCH ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*) ;
 int bce_TXP_b06FwBss ;
 int bce_TXP_b06FwBssAddr ;
 int bce_TXP_b06FwBssLen ;
 int bce_TXP_b06FwData ;
 int bce_TXP_b06FwDataAddr ;
 int bce_TXP_b06FwDataLen ;
 int bce_TXP_b06FwReleaseFix ;
 int bce_TXP_b06FwReleaseMajor ;
 int bce_TXP_b06FwReleaseMinor ;
 int bce_TXP_b06FwRodata ;
 int bce_TXP_b06FwRodataAddr ;
 int bce_TXP_b06FwRodataLen ;
 int bce_TXP_b06FwSbss ;
 int bce_TXP_b06FwSbssAddr ;
 int bce_TXP_b06FwSbssLen ;
 int bce_TXP_b06FwStartAddr ;
 int bce_TXP_b06FwText ;
 int bce_TXP_b06FwTextAddr ;
 int bce_TXP_b06FwTextLen ;
 int bce_TXP_b09FwBss ;
 int bce_TXP_b09FwBssAddr ;
 int bce_TXP_b09FwBssLen ;
 int bce_TXP_b09FwData ;
 int bce_TXP_b09FwDataAddr ;
 int bce_TXP_b09FwDataLen ;
 int bce_TXP_b09FwReleaseFix ;
 int bce_TXP_b09FwReleaseMajor ;
 int bce_TXP_b09FwReleaseMinor ;
 int bce_TXP_b09FwRodata ;
 int bce_TXP_b09FwRodataAddr ;
 int bce_TXP_b09FwRodataLen ;
 int bce_TXP_b09FwSbss ;
 int bce_TXP_b09FwSbssAddr ;
 int bce_TXP_b09FwSbssLen ;
 int bce_TXP_b09FwStartAddr ;
 int bce_TXP_b09FwText ;
 int bce_TXP_b09FwTextAddr ;
 int bce_TXP_b09FwTextLen ;
 int bce_load_cpu_fw (struct bce_softc*,struct cpu_reg*,struct fw_info*) ;
 int bce_start_cpu (struct bce_softc*,struct cpu_reg*) ;

__attribute__((used)) static void
bce_init_txp_cpu(struct bce_softc *sc)
{
 struct cpu_reg cpu_reg;
 struct fw_info fw;

 DBENTER(BCE_VERBOSE_RESET);

 cpu_reg.mode = BCE_TXP_CPU_MODE;
 cpu_reg.mode_value_halt = BCE_TXP_CPU_MODE_SOFT_HALT;
 cpu_reg.mode_value_sstep = BCE_TXP_CPU_MODE_STEP_ENA;
 cpu_reg.state = BCE_TXP_CPU_STATE;
 cpu_reg.state_value_clear = 0xffffff;
 cpu_reg.gpr0 = BCE_TXP_CPU_REG_FILE;
 cpu_reg.evmask = BCE_TXP_CPU_EVENT_MASK;
 cpu_reg.pc = BCE_TXP_CPU_PROGRAM_COUNTER;
 cpu_reg.inst = BCE_TXP_CPU_INSTRUCTION;
 cpu_reg.bp = BCE_TXP_CPU_HW_BREAKPOINT;
 cpu_reg.spad_base = BCE_TXP_SCRATCH;
 cpu_reg.mips_view_base = 0x8000000;

 if (BCE_CHIP_NUM(sc) == BCE_CHIP_NUM_5709) {
  fw.ver_major = bce_TXP_b09FwReleaseMajor;
  fw.ver_minor = bce_TXP_b09FwReleaseMinor;
  fw.ver_fix = bce_TXP_b09FwReleaseFix;
  fw.start_addr = bce_TXP_b09FwStartAddr;

  fw.text_addr = bce_TXP_b09FwTextAddr;
  fw.text_len = bce_TXP_b09FwTextLen;
  fw.text_index = 0;
  fw.text = bce_TXP_b09FwText;

  fw.data_addr = bce_TXP_b09FwDataAddr;
  fw.data_len = bce_TXP_b09FwDataLen;
  fw.data_index = 0;
  fw.data = bce_TXP_b09FwData;

  fw.sbss_addr = bce_TXP_b09FwSbssAddr;
  fw.sbss_len = bce_TXP_b09FwSbssLen;
  fw.sbss_index = 0;
  fw.sbss = bce_TXP_b09FwSbss;

  fw.bss_addr = bce_TXP_b09FwBssAddr;
  fw.bss_len = bce_TXP_b09FwBssLen;
  fw.bss_index = 0;
  fw.bss = bce_TXP_b09FwBss;

  fw.rodata_addr = bce_TXP_b09FwRodataAddr;
  fw.rodata_len = bce_TXP_b09FwRodataLen;
  fw.rodata_index = 0;
  fw.rodata = bce_TXP_b09FwRodata;
 } else {
  fw.ver_major = bce_TXP_b06FwReleaseMajor;
  fw.ver_minor = bce_TXP_b06FwReleaseMinor;
  fw.ver_fix = bce_TXP_b06FwReleaseFix;
  fw.start_addr = bce_TXP_b06FwStartAddr;

  fw.text_addr = bce_TXP_b06FwTextAddr;
  fw.text_len = bce_TXP_b06FwTextLen;
  fw.text_index = 0;
  fw.text = bce_TXP_b06FwText;

  fw.data_addr = bce_TXP_b06FwDataAddr;
  fw.data_len = bce_TXP_b06FwDataLen;
  fw.data_index = 0;
  fw.data = bce_TXP_b06FwData;

  fw.sbss_addr = bce_TXP_b06FwSbssAddr;
  fw.sbss_len = bce_TXP_b06FwSbssLen;
  fw.sbss_index = 0;
  fw.sbss = bce_TXP_b06FwSbss;

  fw.bss_addr = bce_TXP_b06FwBssAddr;
  fw.bss_len = bce_TXP_b06FwBssLen;
  fw.bss_index = 0;
  fw.bss = bce_TXP_b06FwBss;

  fw.rodata_addr = bce_TXP_b06FwRodataAddr;
  fw.rodata_len = bce_TXP_b06FwRodataLen;
  fw.rodata_index = 0;
  fw.rodata = bce_TXP_b06FwRodata;
 }

 DBPRINT(sc, BCE_INFO_RESET, "Loading TX firmware.\n");
 bce_load_cpu_fw(sc, &cpu_reg, &fw);
    bce_start_cpu(sc, &cpu_reg);

 DBEXIT(BCE_VERBOSE_RESET);
}
