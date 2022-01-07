
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int dummy; } ;
struct trapframe {int dummy; } ;


 int * VMBUS_PCPU_GET (struct vmbus_softc*,int ,int) ;
 int critical_enter () ;
 int critical_exit () ;
 int curcpu ;
 int intr_cnt ;
 struct vmbus_softc* vmbus_get_softc () ;
 int vmbus_handle_intr1 (struct vmbus_softc*,struct trapframe*,int) ;

void
vmbus_handle_intr(struct trapframe *trap_frame)
{
 struct vmbus_softc *sc = vmbus_get_softc();
 int cpu = curcpu;




 critical_enter();




 (*VMBUS_PCPU_GET(sc, intr_cnt, cpu))++;

 vmbus_handle_intr1(sc, trap_frame, cpu);




 critical_exit();
}
