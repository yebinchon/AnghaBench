
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct trapframe {int dummy; } ;
struct intr_event {int dummy; } ;
typedef int eirr ;
struct TYPE_2__ {struct intr_event* ie; } ;




 int IRQ_TIMER ;
 int critical_enter () ;
 int critical_exit () ;
 scalar_t__ intr_event_handle (struct intr_event*,struct trapframe*) ;
 int * mips_intr_counters ;
 int mips_intrcnt_inc (int ) ;
 int nlm_read_c0_eimr () ;
 int nlm_read_c0_eirr () ;
 int nlm_write_c0_eirr (unsigned long long) ;
 int printf (char*,int) ;
 TYPE_1__* xlp_interrupts ;

void
cpu_intr(struct trapframe *tf)
{
 struct intr_event *ie;
 uint64_t eirr, eimr;
 int i;

 critical_enter();


 eirr = nlm_read_c0_eirr();
 eimr = nlm_read_c0_eimr();
 eirr &= eimr;

 if (eirr == 0) {
  critical_exit();
  return;
 }




 if (eirr & (1 << IRQ_TIMER)) {
  intr_event_handle(xlp_interrupts[IRQ_TIMER].ie, tf);
  critical_exit();
  return;
 }


 for (i = sizeof(eirr) * 8 - 1; i >= 0; i--) {
  if ((eirr & (1ULL << i)) == 0)
   continue;

  ie = xlp_interrupts[i].ie;

  switch (i) {
  case 129:
  case 128:
   break;
  default:
   mips_intrcnt_inc(mips_intr_counters[i]);
  }


  nlm_write_c0_eirr(1ULL << i);
  if (intr_event_handle(ie, tf) != 0) {
   printf("stray interrupt %d\n", i);
  }
 }
 critical_exit();
}
