
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int dummy; } ;


 uintptr_t OFFSET ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PMC_TRAPFRAME_TO_FP (struct trapframe*) ;
 uintptr_t PMC_TRAPFRAME_TO_PC (struct trapframe*) ;
 int asttrapexit ;
 int trapexit ;

int
pmc_save_kernel_callchain(uintptr_t *cc, int maxsamples,
    struct trapframe *tf)
{
 uintptr_t *osp, *sp;
 uintptr_t pc;
 int frames = 0;

 cc[frames++] = PMC_TRAPFRAME_TO_PC(tf);
 sp = (uintptr_t *)PMC_TRAPFRAME_TO_FP(tf);
 osp = (uintptr_t *)PAGE_SIZE;

 for (; frames < maxsamples; frames++) {
  if (sp <= osp)
   break;



  pc = sp[1];

  if ((pc & 3) || (pc < 0x100))
   break;





  if (pc + OFFSET == (uintptr_t) &trapexit ||
      pc + OFFSET == (uintptr_t) &asttrapexit)
   break;

  cc[frames] = pc;
  osp = sp;
  sp = (uintptr_t *)*sp;
 }
 return (frames);
}
