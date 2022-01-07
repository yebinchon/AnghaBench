
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmci_num_intr; int vmci_interrupt_bm_task; } ;


 int ASSERT (int) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;
 TYPE_1__* vmci_sc ;

__attribute__((used)) static void
vmci_interrupt_bm(void *arg)
{

 ASSERT(vmci_sc->vmci_num_intr == 2);
 taskqueue_enqueue(taskqueue_swi, &vmci_sc->vmci_interrupt_bm_task);
}
