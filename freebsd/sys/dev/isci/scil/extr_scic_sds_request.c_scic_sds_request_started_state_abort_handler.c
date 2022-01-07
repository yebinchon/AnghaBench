
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; } ;
struct TYPE_4__ {TYPE_1__ parent; int started_substate_machine; scalar_t__ has_started_substate_machine; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_ABORTING ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_stop (int *) ;

SCI_STATUS scic_sds_request_started_state_abort_handler(
   SCI_BASE_REQUEST_T *request
)
{
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;

   if (this_request->has_started_substate_machine)
   {
      sci_base_state_machine_stop(&this_request->started_substate_machine);
   }

   sci_base_state_machine_change_state(
      &this_request->parent.state_machine,
      SCI_BASE_REQUEST_STATE_ABORTING
   );

   return SCI_SUCCESS;
}
