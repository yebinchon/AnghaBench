
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct thread {TYPE_3__* td_pcb; TYPE_2__* td_proc; } ;
typedef int * pmap_t ;
typedef int jmp_buf ;
struct TYPE_6__ {int * pcb_onfault; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; } ;
struct TYPE_4__ {int vm_pmap; } ;


 struct thread* curthread ;
 scalar_t__ pmap_map_user_ptr (int *,void*,void**,int,int *) ;
 scalar_t__ setjmp (int ) ;

int
casueword32(volatile uint32_t *addr, uint32_t old, uint32_t *oldvalp,
    uint32_t new)
{
 struct thread *td;
 pmap_t pm;
 jmp_buf env;
 uint32_t *p, val;
 int res;

 td = curthread;
 pm = &td->td_proc->p_vmspace->vm_pmap;

 td->td_pcb->pcb_onfault = &env;
 if (setjmp(env)) {
  td->td_pcb->pcb_onfault = ((void*)0);
  return (-1);
 }

 if (pmap_map_user_ptr(pm, (void *)(uintptr_t)addr, (void **)&p,
     sizeof(*p), ((void*)0))) {
  td->td_pcb->pcb_onfault = ((void*)0);
  return (-1);
 }

 res = 0;
 __asm __volatile (
  "lwarx %0, 0, %3\n\t"
  "cmplw %4, %0\n\t"
  "bne 1f\n\t"
  "stwcx. %5, 0, %3\n\t"
  "bne- 2f\n\t"
  "b 3f\n\t"
  "1:\n\t"
  "stwcx. %0, 0, %3\n\t"
  "2:li %2, 1\n\t"
  "3:\n\t"
  : "=&r" (val), "=m" (*p), "+&r" (res)
  : "r" (p), "r" (old), "r" (new), "m" (*p)
  : "cr0", "memory");

 td->td_pcb->pcb_onfault = ((void*)0);

 *oldvalp = val;
 return (res);
}
