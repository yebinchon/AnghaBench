
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* SCI_START_INTERNAL_IO_ROUTINE ) (void*) ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int FUNCPTR ;



void
scif_cb_start_internal_io_task_schedule(SCI_CONTROLLER_HANDLE_T scif_controller,
    FUNCPTR start_internal_io_task_routine, void *context)
{



 SCI_START_INTERNAL_IO_ROUTINE sci_start_internal_io_routine =
     (SCI_START_INTERNAL_IO_ROUTINE)start_internal_io_task_routine;

 sci_start_internal_io_routine(context);
}
