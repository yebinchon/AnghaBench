#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U16 ;
struct TYPE_13__ {int /*<<< orphan*/  task_context_buffer; int /*<<< orphan*/  command_buffer; } ;
struct TYPE_10__ {scalar_t__ attached_smp_target; scalar_t__ attached_stp_target; scalar_t__ attached_ssp_target; } ;
struct TYPE_11__ {TYPE_1__ bits; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  SMP_REQUEST_T ;
typedef  TYPE_3__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef  scalar_t__ SCI_STATUS ;
typedef  scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  void* SCI_IO_REQUEST_HANDLE_T ;
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_4__ SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;
typedef  int /*<<< orphan*/  SATA_FIS_REG_H2D_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_SMP_IO_REQUEST ; 
 int SCIC_LOG_OBJECT_SSP_IO_REQUEST ; 
 int SCIC_LOG_OBJECT_STP_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ; 
 scalar_t__ SCI_FAILURE_INVALID_REMOTE_DEVICE ; 
 scalar_t__ SCI_FAILURE_UNSUPPORTED_PROTOCOL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_TASK_CONTEXT_T ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  sgl_pair_ab ; 

SCI_STATUS FUNC10(
   SCI_CONTROLLER_HANDLE_T      scic_controller,
   SCI_REMOTE_DEVICE_HANDLE_T   scic_remote_device,
   U16                          io_tag,
   void                       * user_io_request_object,
   void                       * scic_io_request_memory,
   SCI_IO_REQUEST_HANDLE_T    * new_scic_io_request_handle
)
{
   SCI_STATUS                          status = SCI_SUCCESS;
   SCIC_SDS_REQUEST_T                * this_request;
   SMP_DISCOVER_RESPONSE_PROTOCOLS_T   device_protocol;

   this_request = (SCIC_SDS_REQUEST_T * )scic_io_request_memory;

   FUNC0((
      FUNC3(scic_controller),
      (SCIC_LOG_OBJECT_SSP_IO_REQUEST
      |SCIC_LOG_OBJECT_SMP_IO_REQUEST
      |SCIC_LOG_OBJECT_STP_IO_REQUEST),
      "scic_io_request_construct(0x%x, 0x%x, 0x02x, 0x%x, 0x%x, 0x%x) enter\n",
      scic_controller, scic_remote_device,
      io_tag, user_io_request_object,
      this_request, new_scic_io_request_handle
   ));

   // Build the common part of the request
   FUNC5(
      (SCIC_SDS_CONTROLLER_T *)scic_controller,
      (SCIC_SDS_REMOTE_DEVICE_T *)scic_remote_device,
      io_tag,
      user_io_request_object,
      this_request
   );

   if (
         FUNC6((SCIC_SDS_REMOTE_DEVICE_T *)scic_remote_device)
      == SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX
      )
   {
      return SCI_FAILURE_INVALID_REMOTE_DEVICE;
   }

   FUNC4(scic_remote_device, &device_protocol);

   if (device_protocol.u.bits.attached_ssp_target)
   {
      FUNC8(this_request);
   }
   else if (device_protocol.u.bits.attached_stp_target)
   {
      FUNC9(this_request);
      FUNC2(this_request->command_buffer, 0, sizeof(SATA_FIS_REG_H2D_T));
   }
   else if (device_protocol.u.bits.attached_smp_target)
   {
      FUNC7(this_request);
      FUNC2(this_request->command_buffer, 0, sizeof(SMP_REQUEST_T));
   }
   else
   {
      status = SCI_FAILURE_UNSUPPORTED_PROTOCOL;
   }

   if (status == SCI_SUCCESS)
   {
      FUNC2(
         this_request->task_context_buffer,
         0,
         FUNC1(SCU_TASK_CONTEXT_T, sgl_pair_ab)
      );
      *new_scic_io_request_handle = scic_io_request_memory;
   }

   return status;
}