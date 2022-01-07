
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
typedef int * pmap_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_pmap; } ;


 int ENXIO ;
 int FPU_KERN_NOCTX ;
 int PMAP_LOCK (int *) ;
 int PMAP_UNLOCK (int *) ;
 struct thread* curthread ;
 int efi_arch_enter () ;
 int efi_lock ;
 int * efi_runtime ;
 int fpu_kern_enter (struct thread*,int *,int ) ;
 int fpu_kern_leave (struct thread*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
efi_enter(void)
{
 struct thread *td;
 pmap_t curpmap;
 int error;

 if (efi_runtime == ((void*)0))
  return (ENXIO);
 td = curthread;
 curpmap = &td->td_proc->p_vmspace->vm_pmap;
 PMAP_LOCK(curpmap);
 mtx_lock(&efi_lock);
 fpu_kern_enter(td, ((void*)0), FPU_KERN_NOCTX);
 error = efi_arch_enter();
 if (error != 0) {
  fpu_kern_leave(td, ((void*)0));
  mtx_unlock(&efi_lock);
  PMAP_UNLOCK(curpmap);
 }
 return (error);
}
