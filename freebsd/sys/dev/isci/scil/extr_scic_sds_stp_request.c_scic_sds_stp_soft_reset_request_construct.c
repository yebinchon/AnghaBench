
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct TYPE_6__ {TYPE_1__ parent; int started_substate_machine; int task_context_buffer; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_STP_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int SCIC_SDS_STP_REQUEST_STARTED_SOFT_RESET_AWAIT_H2D_ASSERTED_COMPLETION_SUBSTATE ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int scic_sds_stp_non_ncq_request_construct (TYPE_2__*) ;
 int scic_sds_stp_request_started_soft_reset_substate_table ;
 int scu_stp_raw_request_construct_task_context (int *,int ) ;

SCI_STATUS scic_sds_stp_soft_reset_request_construct(
   SCIC_SDS_REQUEST_T * this_request
)
{
   scic_sds_stp_non_ncq_request_construct(this_request);


   scu_stp_raw_request_construct_task_context(
      (SCIC_SDS_STP_REQUEST_T*) this_request,
      this_request->task_context_buffer
   );

   sci_base_state_machine_construct(
      &this_request->started_substate_machine,
      &this_request->parent.parent,
      scic_sds_stp_request_started_soft_reset_substate_table,
      SCIC_SDS_STP_REQUEST_STARTED_SOFT_RESET_AWAIT_H2D_ASSERTED_COMPLETION_SUBSTATE
   );

   return SCI_SUCCESS;
}
