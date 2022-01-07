
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_13__ {int task_context_buffer; int command_buffer; } ;
struct TYPE_10__ {scalar_t__ attached_smp_target; scalar_t__ attached_stp_target; scalar_t__ attached_ssp_target; } ;
struct TYPE_11__ {TYPE_1__ bits; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
typedef int SMP_REQUEST_T ;
typedef TYPE_3__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef scalar_t__ SCI_STATUS ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef void* SCI_IO_REQUEST_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_4__ SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;
typedef int SATA_FIS_REG_H2D_T ;


 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ;
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ;
 int SCIC_LOG_TRACE (int ) ;
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 scalar_t__ SCI_FAILURE_INVALID_REMOTE_DEVICE ;
 scalar_t__ SCI_FAILURE_UNSUPPORTED_PROTOCOL ;
 int SCI_FIELD_OFFSET (int ,int ) ;
 scalar_t__ SCI_SUCCESS ;
 int SCU_TASK_CONTEXT_T ;
 int memset (int ,int ,int) ;
 int sci_base_object_get_logger (scalar_t__) ;
 int scic_remote_device_get_protocols (scalar_t__,TYPE_3__*) ;
 int scic_sds_general_request_construct (int *,int *,int ,void*,TYPE_4__*) ;
 scalar_t__ scic_sds_remote_device_get_index (int *) ;
 int scic_sds_smp_request_assign_buffers (TYPE_4__*) ;
 int scic_sds_ssp_io_request_assign_buffers (TYPE_4__*) ;
 int scic_sds_stp_request_assign_buffers (TYPE_4__*) ;
 int sgl_pair_ab ;

SCI_STATUS scic_io_request_construct(
   SCI_CONTROLLER_HANDLE_T scic_controller,
   SCI_REMOTE_DEVICE_HANDLE_T scic_remote_device,
   U16 io_tag,
   void * user_io_request_object,
   void * scic_io_request_memory,
   SCI_IO_REQUEST_HANDLE_T * new_scic_io_request_handle
)
{
   SCI_STATUS status = SCI_SUCCESS;
   SCIC_SDS_REQUEST_T * this_request;
   SMP_DISCOVER_RESPONSE_PROTOCOLS_T device_protocol;

   this_request = (SCIC_SDS_REQUEST_T * )scic_io_request_memory;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(scic_controller),
      (SCIC_LOG_OBJECT_SSP_IO_REQUEST
      |SCIC_LOG_OBJECT_SMP_IO_REQUEST
      |SCIC_LOG_OBJECT_STP_IO_REQUEST),
      "scic_io_request_construct(0x%x, 0x%x, 0x02x, 0x%x, 0x%x, 0x%x) enter\n",
      scic_controller, scic_remote_device,
      io_tag, user_io_request_object,
      this_request, new_scic_io_request_handle
   ));


   scic_sds_general_request_construct(
      (SCIC_SDS_CONTROLLER_T *)scic_controller,
      (SCIC_SDS_REMOTE_DEVICE_T *)scic_remote_device,
      io_tag,
      user_io_request_object,
      this_request
   );

   if (
         scic_sds_remote_device_get_index((SCIC_SDS_REMOTE_DEVICE_T *)scic_remote_device)
      == SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX
      )
   {
      return SCI_FAILURE_INVALID_REMOTE_DEVICE;
   }

   scic_remote_device_get_protocols(scic_remote_device, &device_protocol);

   if (device_protocol.u.bits.attached_ssp_target)
   {
      scic_sds_ssp_io_request_assign_buffers(this_request);
   }
   else if (device_protocol.u.bits.attached_stp_target)
   {
      scic_sds_stp_request_assign_buffers(this_request);
      memset(this_request->command_buffer, 0, sizeof(SATA_FIS_REG_H2D_T));
   }
   else if (device_protocol.u.bits.attached_smp_target)
   {
      scic_sds_smp_request_assign_buffers(this_request);
      memset(this_request->command_buffer, 0, sizeof(SMP_REQUEST_T));
   }
   else
   {
      status = SCI_FAILURE_UNSUPPORTED_PROTOCOL;
   }

   if (status == SCI_SUCCESS)
   {
      memset(
         this_request->task_context_buffer,
         0,
         SCI_FIELD_OFFSET(SCU_TASK_CONTEXT_T, sgl_pair_ab)
      );
      *new_scic_io_request_handle = scic_io_request_memory;
   }

   return status;
}
