
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_scause; } ;
struct intr_irqsrc {int dummy; } ;
struct TYPE_2__ {struct intr_irqsrc isrc; } ;


 int EXCP_INTR ;
 int EXCP_MASK ;




 int KASSERT (int,char*) ;
 int critical_enter () ;
 int critical_exit () ;
 int intr_irq_handler (struct trapframe*) ;
 int intr_isrc_dispatch (struct intr_irqsrc*,struct trapframe*) ;
 TYPE_1__* isrcs ;
 int printf (char*,int) ;

void
riscv_cpu_intr(struct trapframe *frame)
{
 struct intr_irqsrc *isrc;
 int active_irq;

 critical_enter();

 KASSERT(frame->tf_scause & EXCP_INTR,
  ("riscv_cpu_intr: wrong frame passed"));

 active_irq = (frame->tf_scause & EXCP_MASK);

 switch (active_irq) {
 case 129:
 case 130:
 case 128:
  isrc = &isrcs[active_irq].isrc;
  if (intr_isrc_dispatch(isrc, frame) != 0)
   printf("stray interrupt %d\n", active_irq);
  break;
 case 131:
  intr_irq_handler(frame);
  break;
 default:
  break;
 }

 critical_exit();
}
