
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_reg {int state_value_clear; int mips_view_base; int spad_base; int bp; int inst; int pc; int evmask; int gpr0; int state; int mode_value_sstep; int mode_value_halt; int mode; } ;
struct bce_softc {int dummy; } ;


 int BCE_INFO_RESET ;
 int BCE_RXP_CPU_EVENT_MASK ;
 int BCE_RXP_CPU_HW_BREAKPOINT ;
 int BCE_RXP_CPU_INSTRUCTION ;
 int BCE_RXP_CPU_MODE ;
 int BCE_RXP_CPU_MODE_SOFT_HALT ;
 int BCE_RXP_CPU_MODE_STEP_ENA ;
 int BCE_RXP_CPU_PROGRAM_COUNTER ;
 int BCE_RXP_CPU_REG_FILE ;
 int BCE_RXP_CPU_STATE ;
 int BCE_RXP_SCRATCH ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DBPRINT (struct bce_softc*,int ,char*) ;
 int bce_start_cpu (struct bce_softc*,struct cpu_reg*) ;

__attribute__((used)) static void
bce_start_rxp_cpu(struct bce_softc *sc)
{
 struct cpu_reg cpu_reg;

 DBENTER(BCE_VERBOSE_RESET);

 cpu_reg.mode = BCE_RXP_CPU_MODE;
 cpu_reg.mode_value_halt = BCE_RXP_CPU_MODE_SOFT_HALT;
 cpu_reg.mode_value_sstep = BCE_RXP_CPU_MODE_STEP_ENA;
 cpu_reg.state = BCE_RXP_CPU_STATE;
 cpu_reg.state_value_clear = 0xffffff;
 cpu_reg.gpr0 = BCE_RXP_CPU_REG_FILE;
 cpu_reg.evmask = BCE_RXP_CPU_EVENT_MASK;
 cpu_reg.pc = BCE_RXP_CPU_PROGRAM_COUNTER;
 cpu_reg.inst = BCE_RXP_CPU_INSTRUCTION;
 cpu_reg.bp = BCE_RXP_CPU_HW_BREAKPOINT;
 cpu_reg.spad_base = BCE_RXP_SCRATCH;
 cpu_reg.mips_view_base = 0x8000000;

 DBPRINT(sc, BCE_INFO_RESET, "Starting RX firmware.\n");
 bce_start_cpu(sc, &cpu_reg);

 DBEXIT(BCE_VERBOSE_RESET);
}
