
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_pcb; } ;
typedef int jmp_buf ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_2__ {int * pcb_onfault; } ;


 struct thread* curthread ;
 int panic (char*,size_t) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static int
badaddr(void *addr, size_t size)
{
 struct thread *td;
 jmp_buf env, *oldfaultbuf;
 int x;


 __asm __volatile ("sync; isync");

 td = curthread;

 oldfaultbuf = td->td_pcb->pcb_onfault;
 td->td_pcb->pcb_onfault = &env;
 if (setjmp(env)) {
  td->td_pcb->pcb_onfault = oldfaultbuf;
  __asm __volatile ("sync");
  return 1;
 }

 __asm __volatile ("sync");

 switch (size) {
 case 1:
  x = *(volatile int8_t *)addr;
  break;
 case 2:
  x = *(volatile int16_t *)addr;
  break;
 case 4:
  x = *(volatile int32_t *)addr;
  break;
 default:
  panic("badaddr: invalid size (%zd)", size);
 }


 __asm __volatile ("sync; isync");

 td->td_pcb->pcb_onfault = oldfaultbuf;
 __asm __volatile ("sync");

 return (0);
}
