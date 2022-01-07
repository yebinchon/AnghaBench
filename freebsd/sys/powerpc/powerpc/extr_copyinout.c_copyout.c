
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread {TYPE_3__* td_pcb; TYPE_2__* td_proc; } ;
typedef int * pmap_t ;
typedef int jmp_buf ;
struct TYPE_6__ {int * pcb_onfault; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; } ;
struct TYPE_4__ {int vm_pmap; } ;


 int EFAULT ;
 int bcopy (char const*,char*,size_t) ;
 struct thread* curthread ;
 scalar_t__ pmap_map_user_ptr (int *,char*,void**,size_t,size_t*) ;
 scalar_t__ setjmp (int ) ;

int
copyout(const void *kaddr, void *udaddr, size_t len)
{
 struct thread *td;
 pmap_t pm;
 jmp_buf env;
 const char *kp;
 char *up, *p;
 size_t l;

 td = curthread;
 pm = &td->td_proc->p_vmspace->vm_pmap;

 td->td_pcb->pcb_onfault = &env;
 if (setjmp(env)) {
  td->td_pcb->pcb_onfault = ((void*)0);
  return (EFAULT);
 }

 kp = kaddr;
 up = udaddr;

 while (len > 0) {
  if (pmap_map_user_ptr(pm, up, (void **)&p, len, &l)) {
   td->td_pcb->pcb_onfault = ((void*)0);
   return (EFAULT);
  }

  bcopy(kp, p, l);

  up += l;
  kp += l;
  len -= l;
 }

 td->td_pcb->pcb_onfault = ((void*)0);
 return (0);
}
