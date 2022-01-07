
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
typedef int * pmap_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int vm_pmap; } ;


 int PMAP_UNLOCK (int *) ;
 TYPE_2__* curproc ;
 struct thread* curthread ;
 int efi_arch_leave () ;
 int efi_lock ;
 int fpu_kern_leave (struct thread*,int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
efi_leave(void)
{
 struct thread *td;
 pmap_t curpmap;

 efi_arch_leave();

 curpmap = &curproc->p_vmspace->vm_pmap;
 td = curthread;
 fpu_kern_leave(td, ((void*)0));
 mtx_unlock(&efi_lock);
 PMAP_UNLOCK(curpmap);
}
