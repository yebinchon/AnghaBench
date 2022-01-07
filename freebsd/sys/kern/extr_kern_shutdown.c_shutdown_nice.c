
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ta_context; } ;


 int RB_NOSYNC ;
 int SCHEDULER_STOPPED () ;
 int * initproc ;
 int kern_reboot (int) ;
 TYPE_1__ shutdown_nice_task ;
 int taskqueue_enqueue (int ,TYPE_1__*) ;
 int taskqueue_fast ;

void
shutdown_nice(int howto)
{

 if (initproc != ((void*)0) && !SCHEDULER_STOPPED()) {
  shutdown_nice_task.ta_context = (void *)(uintptr_t)howto;
  taskqueue_enqueue(taskqueue_fast, &shutdown_nice_task);
 } else {




  kern_reboot(howto | RB_NOSYNC);
 }
}
