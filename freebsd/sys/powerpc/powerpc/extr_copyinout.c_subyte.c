
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


 struct thread* curthread ;
 scalar_t__ pmap_map_user_ptr (int *,void volatile*,void**,int,int *) ;
 scalar_t__ setjmp (int ) ;

int
subyte(volatile void *addr, int byte)
{
 struct thread *td;
 pmap_t pm;
 jmp_buf env;
 char *p;

 td = curthread;
 pm = &td->td_proc->p_vmspace->vm_pmap;

 td->td_pcb->pcb_onfault = &env;
 if (setjmp(env)) {
  td->td_pcb->pcb_onfault = ((void*)0);
  return (-1);
 }

 if (pmap_map_user_ptr(pm, addr, (void **)&p, sizeof(*p), ((void*)0))) {
  td->td_pcb->pcb_onfault = ((void*)0);
  return (-1);
 }

 *p = (char)byte;

 td->td_pcb->pcb_onfault = ((void*)0);
 return (0);
}
