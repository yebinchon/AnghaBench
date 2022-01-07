
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct intr_event {int ie_handlers; } ;
typedef int register_t ;
struct TYPE_3__ {int td_pflags; } ;


 scalar_t__ CK_SLIST_EMPTY (int *) ;
 int KASSERT (int,char*) ;
 int MIPS_INT_MASK ;
 int NSOFT_IRQS ;
 TYPE_1__* PCPU_GET (int ) ;
 int PMC_FN_USER_CALLCHAIN ;
 int TDP_CALLCHAIN ;
 int critical_enter () ;
 int critical_exit () ;
 int curthread ;
 int fls (int) ;
 struct intr_event** hardintr_events ;
 scalar_t__ intr_event_handle (struct intr_event*,struct trapframe*) ;
 int * mips_intr_counters ;
 int mips_intrcnt_inc (int ) ;
 int mips_rd_cause () ;
 int mips_rd_status () ;
 int pmc_hook (TYPE_1__*,int ,struct trapframe*) ;
 int printf (char*,char*,int) ;
 struct intr_event** softintr_events ;

void
cpu_intr(struct trapframe *tf)
{
 struct intr_event *event;
 register_t cause, status;
 int hard, i, intr;

 critical_enter();

 cause = mips_rd_cause();
 status = mips_rd_status();
 intr = (cause & MIPS_INT_MASK) >> 8;





 intr &= (status & MIPS_INT_MASK) >> 8;
 while ((i = fls(intr)) != 0) {
  intr &= ~(1 << (i - 1));
  switch (i) {
  case 1: case 2:

   i--;
   hard = 0;
   event = softintr_events[i];
   mips_intrcnt_inc(mips_intr_counters[i]);
   break;
  default:

   i -= 2;
   i--;
   hard = 1;
   event = hardintr_events[i];
   mips_intrcnt_inc(mips_intr_counters[NSOFT_IRQS + i]);
   break;
  }

  if (!event || CK_SLIST_EMPTY(&event->ie_handlers)) {
   printf("stray %s interrupt %d\n",
       hard ? "hard" : "soft", i);
   continue;
  }

  if (intr_event_handle(event, tf) != 0) {
   printf("stray %s interrupt %d\n",
       hard ? "hard" : "soft", i);
  }
 }

 KASSERT(i == 0, ("all interrupts handled"));

 critical_exit();





}
