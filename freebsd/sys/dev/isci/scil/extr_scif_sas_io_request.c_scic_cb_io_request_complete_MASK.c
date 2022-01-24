#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ (* protocol_complete_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__*) ;scalar_t__ is_high_priority; scalar_t__ is_waiting_for_abort_task_set; int /*<<< orphan*/  parent; TYPE_1__* state_handlers; } ;
struct TYPE_7__ {scalar_t__ (* complete_handler ) (int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_IO_STATUS ;
typedef  int /*<<< orphan*/  SCI_IO_REQUEST_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_2__ SCIF_SAS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_SUCCESS ; 
 scalar_t__ SCI_WARNING_SEQUENCE_INCOMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__*) ; 

void FUNC8(
   SCI_CONTROLLER_HANDLE_T     controller,
   SCI_REMOTE_DEVICE_HANDLE_T  remote_device,
   SCI_IO_REQUEST_HANDLE_T     io_request,
   SCI_IO_STATUS               completion_status
)
{
   SCI_STATUS                 status;
   SCIF_SAS_CONTROLLER_T    * fw_controller = (SCIF_SAS_CONTROLLER_T*)
                                      FUNC2(controller);
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                      FUNC2(remote_device);
   SCIF_SAS_REQUEST_T       * fw_request = (SCIF_SAS_REQUEST_T*)
                                      FUNC2(io_request);

   FUNC0((
      FUNC1(controller),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scic_cb_io_request_complete(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request, completion_status
   ));

   // Invoke the common completion handler routine.
   // A non-successful return indicates we are not in a correct state to
   // receive a completion notification for this request.
   status = fw_request->state_handlers->complete_handler(&fw_request->parent);

   // If the status indicates the completion handler was successful, then
   // allow protocol specific completion processing to occur.
   if (status == SCI_SUCCESS)
   {
      if (fw_request->protocol_complete_handler != NULL)
      {
         status = fw_request->protocol_complete_handler(
                     fw_controller, fw_device, fw_request, (SCI_STATUS *)&completion_status
                  );
      }

      // If this isn't an internal framework IO request, then simply pass the
      // notification up to the SCIF user.
      if ( status == SCI_SUCCESS )
      {
         if (fw_request->is_high_priority == FALSE)
         {
            if (fw_request->is_waiting_for_abort_task_set == FALSE)
            {
               FUNC3(
                  fw_controller, fw_device, fw_request, completion_status);
            }
            else
            {
               // do nothing - will complete the I/O when the abort task
               //  set completes
            }
         }
         else
            FUNC4(
               fw_controller, fw_device, fw_request);
      }
      else if ( status == SCI_WARNING_SEQUENCE_INCOMPLETE )
      {
         FUNC5(fw_controller, fw_device, fw_request);
      }
   }
}