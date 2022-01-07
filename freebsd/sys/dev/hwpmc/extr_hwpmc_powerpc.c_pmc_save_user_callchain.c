
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t uint32_t ;
struct trapframe {int srr1; } ;


 scalar_t__ PMC_TRAPFRAME_TO_FP (struct trapframe*) ;
 uintptr_t PMC_TRAPFRAME_TO_PC (struct trapframe*) ;
 int PSL_SF ;
 uintptr_t fuword (uintptr_t*) ;
 uintptr_t fuword32 (uintptr_t*) ;

int
pmc_save_user_callchain(uintptr_t *cc, int maxsamples,
    struct trapframe *tf)
{
 uintptr_t *osp, *sp;
 int frames = 0;

 cc[frames++] = PMC_TRAPFRAME_TO_PC(tf);
 sp = (uintptr_t *)PMC_TRAPFRAME_TO_FP(tf);
 osp = ((void*)0);

 for (; frames < maxsamples; frames++) {
  if (sp <= osp)
   break;
  osp = sp;
  cc[frames] = fuword32((uint32_t *)sp + 1);
  sp = (uintptr_t *)fuword32(sp);

 }

 return (frames);
}
