
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vshr ;
typedef int uint64_t ;
struct thread {struct pcb* td_pcb; } ;
struct TYPE_4__ {TYPE_1__* fpr; } ;
struct pcb {int pcb_flags; TYPE_2__ pcb_fpu; int pcb_vec; } ;
struct TYPE_3__ {int * vsr; } ;


 int NT_PPC_VMX ;
 int NT_PPC_VSX ;
 int PCB_VEC ;
 int PCB_VSX ;
 scalar_t__ elf64_populate_note (int ,int *,char*,int,int *) ;
 int nitems (int *) ;
 int save_fpu_nodrop (struct thread*) ;
 int save_vec_nodrop (struct thread*) ;

void
elf64_dump_thread(struct thread *td, void *dst, size_t *off)
{
 size_t len;
 struct pcb *pcb;
 uint64_t vshr[32];
 uint64_t *vsr_dw1;
 int vsr_idx;

 len = 0;
 pcb = td->td_pcb;

 if (pcb->pcb_flags & PCB_VEC) {
  save_vec_nodrop(td);
  if (dst != ((void*)0)) {
   len += elf64_populate_note(NT_PPC_VMX,
       &pcb->pcb_vec, (char *)dst + len,
       sizeof(pcb->pcb_vec), ((void*)0));
  } else
   len += elf64_populate_note(NT_PPC_VMX, ((void*)0), ((void*)0),
       sizeof(pcb->pcb_vec), ((void*)0));
 }

 if (pcb->pcb_flags & PCB_VSX) {
  save_fpu_nodrop(td);
  if (dst != ((void*)0)) {





   for (vsr_idx = 0; vsr_idx < nitems(vshr); vsr_idx++) {
    vsr_dw1 = (uint64_t *)&pcb->pcb_fpu.fpr[vsr_idx].vsr[2];
    vshr[vsr_idx] = *vsr_dw1;
   }
   len += elf64_populate_note(NT_PPC_VSX,
       vshr, (char *)dst + len,
       sizeof(vshr), ((void*)0));
  } else
   len += elf64_populate_note(NT_PPC_VSX, ((void*)0), ((void*)0),
       sizeof(vshr), ((void*)0));
 }

 *off = len;
}
