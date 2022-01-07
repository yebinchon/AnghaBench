
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int tc_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
t4_update_tx_sched(struct adapter *sc)
{

 taskqueue_enqueue(taskqueue_thread, &sc->tc_task);
}
