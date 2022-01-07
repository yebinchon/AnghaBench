
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int MIPS_INT_MASK ;
 int MIPS_SR_INT_IE ;
 int cpu_activeclock () ;
 int cpu_idleclock () ;
 int critical_enter () ;
 int critical_exit () ;
 int mips_rd_status () ;
 int mips_wait () ;

void
cpu_idle(int busy)
{
 KASSERT((mips_rd_status() & MIPS_SR_INT_IE) != 0,
  ("interrupts disabled in idle process."));
 KASSERT((mips_rd_status() & MIPS_INT_MASK) != 0,
  ("all interrupts masked in idle process."));

 if (!busy) {
  critical_enter();
  cpu_idleclock();
 }
 mips_wait();
 if (!busy) {
  cpu_activeclock();
  critical_exit();
 }
}
