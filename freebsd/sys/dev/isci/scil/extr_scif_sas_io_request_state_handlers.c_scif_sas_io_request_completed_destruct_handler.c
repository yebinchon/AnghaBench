
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; int state_machine_logger; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_BASE_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_FINAL ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_logger_deinitialize (int *,int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_io_request_completed_destruct_handler(
   SCI_BASE_REQUEST_T * io_request
)
{
   sci_base_state_machine_change_state(
      &io_request->state_machine, SCI_BASE_REQUEST_STATE_FINAL
   );

   sci_base_state_machine_logger_deinitialize(
      &io_request->state_machine_logger,
      &io_request->state_machine
   );

   return SCI_SUCCESS;
}
