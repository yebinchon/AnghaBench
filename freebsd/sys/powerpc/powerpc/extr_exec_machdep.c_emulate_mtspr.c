
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int srr0; int * fixreg; } ;
struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {int pcb_dscr; int pcb_flags; } ;


 int PCB_CDSCR ;
 int PPC_FEATURE2_DSCR ;
 int SIGILL ;
 int SPR_DSCR ;
 int SPR_DSCRP ;
 int cpu_features2 ;
 struct thread* curthread ;
 int mtspr (int,int ) ;

__attribute__((used)) static int
emulate_mtspr(int spr, int reg, struct trapframe *frame){
 struct thread *td;

 td = curthread;

 if (spr == SPR_DSCR || spr == SPR_DSCRP) {
  if (!(cpu_features2 & PPC_FEATURE2_DSCR))
   return (SIGILL);
  td->td_pcb->pcb_flags |= PCB_CDSCR;
  td->td_pcb->pcb_dscr = frame->fixreg[reg];
  mtspr(SPR_DSCRP, frame->fixreg[reg]);
  frame->srr0 += 4;
  return (0);
 } else
  return (SIGILL);
}
