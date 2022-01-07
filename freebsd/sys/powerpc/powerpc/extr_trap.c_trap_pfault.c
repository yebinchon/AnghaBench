
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef int * vm_map_t ;
struct TYPE_6__ {int dsisr; } ;
struct TYPE_5__ {int esr; } ;
struct TYPE_7__ {TYPE_2__ aim; TYPE_1__ booke; } ;
struct trapframe {scalar_t__ exc; int srr1; TYPE_3__ cpu; int dar; int srr0; } ;
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_4__* p_vmspace; } ;
struct TYPE_8__ {int vm_map; } ;


 int DSISR_STORE ;
 int ESR_ST ;
 scalar_t__ EXC_ISI ;
 int KASSERT (int ,char*) ;
 int KERN_SUCCESS ;
 int SRR1_ISI_PFAULT ;
 int VM_FAULT_NORMAL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 struct thread* curthread ;
 scalar_t__ handle_onfault (struct trapframe*) ;
 int * kernel_map ;
 int pmap_decode_kernel_ptr (int ,int*,int *) ;
 int vm_fault_trap (int *,int ,int ,int ,int*,int*) ;

__attribute__((used)) static bool
trap_pfault(struct trapframe *frame, bool user, int *signo, int *ucode)
{
 vm_offset_t eva;
 struct thread *td;
 struct proc *p;
 vm_map_t map;
 vm_prot_t ftype;
 int rv, is_user;

 td = curthread;
 p = td->td_proc;
 if (frame->exc == EXC_ISI) {
  eva = frame->srr0;
  ftype = VM_PROT_EXECUTE;
  if (frame->srr1 & SRR1_ISI_PFAULT)
   ftype |= VM_PROT_READ;
 } else {
  eva = frame->dar;



  if (frame->cpu.aim.dsisr & DSISR_STORE)

   ftype = VM_PROT_WRITE;
  else
   ftype = VM_PROT_READ;
 }

 if (user) {
  KASSERT(p->p_vmspace != ((void*)0), ("trap_pfault: vmspace  NULL"));
  map = &p->p_vmspace->vm_map;
 } else {
  rv = pmap_decode_kernel_ptr(eva, &is_user, &eva);
  if (rv != 0)
   return (0);

  if (is_user)
   map = &p->p_vmspace->vm_map;
  else
   map = kernel_map;
 }


 rv = vm_fault_trap(map, eva, ftype, VM_FAULT_NORMAL, signo, ucode);




 if (rv == KERN_SUCCESS)
  return (1);

 if (!user && handle_onfault(frame))
  return (1);

 return (0);
}
