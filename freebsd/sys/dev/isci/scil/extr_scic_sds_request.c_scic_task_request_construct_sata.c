
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_7__ {int state_machine; } ;
struct TYPE_8__ {int sat_protocol; TYPE_1__ parent; int user_request; } ;
typedef scalar_t__ SCI_TASK_REQUEST_HANDLE_T ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 int FALSE ;



 int SCIC_LOG_ERROR (int ) ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 int SCI_BASE_REQUEST_STATE_CONSTRUCTED ;
 scalar_t__ SCI_FAILURE ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scic_cb_request_get_sat_protocol (int ) ;
 int scic_sds_request_initialize_state_logging (TYPE_2__*) ;
 scalar_t__ scic_sds_stp_pio_request_construct (TYPE_2__*,int,int ) ;
 scalar_t__ scic_sds_stp_soft_reset_request_construct (TYPE_2__*) ;

SCI_STATUS scic_task_request_construct_sata(
   SCI_TASK_REQUEST_HANDLE_T scic_task_request
)
{
   SCI_STATUS status;
   SCIC_SDS_REQUEST_T * this_request;
   U8 sat_protocol;

   this_request = (SCIC_SDS_REQUEST_T *)scic_task_request;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_request),
      SCIC_LOG_OBJECT_STP_IO_REQUEST,
      "scic_task_request_construct_sata(0x%x) enter\n",
      this_request
   ));

   sat_protocol =
      scic_cb_request_get_sat_protocol(this_request->user_request);

   this_request->sat_protocol = sat_protocol;

   switch (sat_protocol)
   {
   case 130:
   case 128:
      status = scic_sds_stp_soft_reset_request_construct(this_request);
      break;

   case 129:
      status = scic_sds_stp_pio_request_construct(this_request, sat_protocol, FALSE);
      break;

   default:
      SCIC_LOG_ERROR((
         sci_base_object_get_logger(this_request),
         SCIC_LOG_OBJECT_STP_IO_REQUEST,
         "SCIC IO Request 0x%x received un-handled SAT Protocl %d.\n",
         this_request, sat_protocol
      ));

      status = SCI_FAILURE;
      break;
   }

   if (status == SCI_SUCCESS)
   {
      scic_sds_request_initialize_state_logging(this_request);

      sci_base_state_machine_change_state(
         &this_request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_CONSTRUCTED
      );
   }

   return status;
}
