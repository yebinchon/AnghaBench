
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t U8 ;
struct TYPE_5__ {scalar_t__ completion_queue_get; int * port_table; } ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 size_t SCI_MAX_PORTS ;
 int SCI_SUCCESS ;
 int SCU_UFQGP_WRITE (TYPE_1__*,int) ;
 int SMU_CQGR_WRITE (TYPE_1__*,int) ;
 int SMU_ISR_WRITE (TYPE_1__*,int) ;
 int scic_controller_disable_interrupts (scalar_t__) ;
 int scic_sds_port_suspend_port_task_scheduler (int *) ;

SCI_STATUS scic_controller_suspend(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T * this_controller = (SCIC_SDS_CONTROLLER_T*)controller;
   U8 index;



   scic_controller_disable_interrupts(controller);







   for (index = 0; index < SCI_MAX_PORTS; index++)
      scic_sds_port_suspend_port_task_scheduler(
         &(this_controller->port_table[index]));



   SMU_CQGR_WRITE(this_controller, 0x00000000);
   SCU_UFQGP_WRITE(this_controller, 0x00000000);



   SMU_ISR_WRITE(this_controller, 0xFFFFFFFF);


   this_controller->completion_queue_get = 0;

   return SCI_SUCCESS;
}
