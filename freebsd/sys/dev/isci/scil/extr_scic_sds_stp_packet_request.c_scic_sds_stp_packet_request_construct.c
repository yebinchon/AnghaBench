
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int features; } ;
struct TYPE_8__ {int parent; } ;
struct TYPE_9__ {TYPE_1__ parent; int started_substate_machine; int task_context_buffer; } ;
typedef int SCI_STATUS ;
typedef int SCIC_SDS_STP_REQUEST_T ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;
typedef TYPE_3__ SATA_FIS_REG_H2D_T ;


 int ATA_PACKET_FEATURE_DMA ;
 int SCIC_SDS_STP_PACKET_REQUEST_STARTED_PACKET_PHASE_AWAIT_TC_COMPLETION_SUBSTATE ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_construct (int *,int *,int ,int ) ;
 int scic_sds_stp_non_ncq_request_construct (TYPE_2__*) ;
 int scic_sds_stp_packet_request_started_substate_table ;
 TYPE_3__* scic_stp_io_request_get_h2d_reg_address (TYPE_2__*) ;
 int scu_stp_raw_request_construct_task_context (int *,int ) ;

SCI_STATUS scic_sds_stp_packet_request_construct(
   SCIC_SDS_REQUEST_T *this_request
)
{
   SATA_FIS_REG_H2D_T * h2d_fis =
      scic_stp_io_request_get_h2d_reg_address(
         this_request
      );



   h2d_fis->features = h2d_fis->features | ATA_PACKET_FEATURE_DMA;

   scic_sds_stp_non_ncq_request_construct(this_request);


   scu_stp_raw_request_construct_task_context(
      (SCIC_SDS_STP_REQUEST_T*) this_request,
      this_request->task_context_buffer
   );

   sci_base_state_machine_construct(
      &this_request->started_substate_machine,
      &this_request->parent.parent,
      scic_sds_stp_packet_request_started_substate_table,
      SCIC_SDS_STP_PACKET_REQUEST_STARTED_PACKET_PHASE_AWAIT_TC_COMPLETION_SUBSTATE
   );

   return SCI_SUCCESS;
}
