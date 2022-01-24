#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_IO_REQUEST_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_IO_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_CONTROLLER_INVALID_IO_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SCI_STATUS FUNC6(
   SCIF_SAS_CONTROLLER_T       * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T    * fw_device,
   SCIF_SAS_REQUEST_T          * fw_request
)
{
   SCI_IO_REQUEST_HANDLE_T dummy_handle;

   FUNC0(*(
      FUNC1(fw_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_io_request_continue(0x%x, 0x%x, 0x%x) enter\n",
      fw_controller,
      fw_device,
      fw_request
   ));

   //complete this io request in framework and core.
   FUNC3(fw_controller, fw_device, fw_request);

   //construct next command in the sequence using the same memory. We pass
   //a dummy pointer to let the framework user keep the pointer to this IO
   //request untouched.
   FUNC5(
      fw_device,
      (SCIF_SAS_IO_REQUEST_T*)fw_request,
      SCI_CONTROLLER_INVALID_IO_TAG,
      (void *)FUNC2(fw_request),
      &dummy_handle,
      FALSE
   );

   //start the new constructed IO.
   return (SCI_STATUS)FUNC4(
             (SCI_CONTROLLER_HANDLE_T) fw_controller,
             (SCI_REMOTE_DEVICE_HANDLE_T) fw_device,
             (SCI_IO_REQUEST_HANDLE_T) fw_request,
             SCI_CONTROLLER_INVALID_IO_TAG
          );
}