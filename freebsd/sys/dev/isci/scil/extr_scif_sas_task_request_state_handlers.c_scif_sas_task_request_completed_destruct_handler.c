
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ is_internal; } ;
struct TYPE_4__ {int state_machine; int state_machine_logger; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_BASE_REQUEST_T ;
typedef int SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_FINAL ;
 int SCI_SUCCESS ;
 scalar_t__ TRUE ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_logger_deinitialize (int *,int *) ;
 int scif_sas_internal_task_request_destruct (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_task_request_completed_destruct_handler(
   SCI_BASE_REQUEST_T * task_request
)
{
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T *)task_request;

   sci_base_state_machine_change_state(
      &task_request->state_machine, SCI_BASE_REQUEST_STATE_FINAL
   );

   sci_base_state_machine_logger_deinitialize(
      &task_request->state_machine_logger,
      &task_request->state_machine
   );

   if (fw_request->is_internal == TRUE)
   {
      scif_sas_internal_task_request_destruct(
         (SCIF_SAS_TASK_REQUEST_T *)fw_request
      );
   }

   return SCI_SUCCESS;
}
