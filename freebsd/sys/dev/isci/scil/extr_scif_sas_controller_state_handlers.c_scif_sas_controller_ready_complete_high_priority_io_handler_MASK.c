#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_16__ {int /*<<< orphan*/  pool; } ;
struct TYPE_19__ {TYPE_5__ hprq; int /*<<< orphan*/  core_object; } ;
struct TYPE_13__ {int /*<<< orphan*/  parent; TYPE_1__* state_handlers; int /*<<< orphan*/  core_object; } ;
struct TYPE_18__ {TYPE_2__ parent; } ;
struct TYPE_17__ {TYPE_4__* domain; int /*<<< orphan*/  core_object; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; TYPE_3__* state_handlers; } ;
struct TYPE_14__ {scalar_t__ (* complete_high_priority_io_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  (* destruct_handler ) (int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_IO_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_7__ SCIF_SAS_IO_REQUEST_T ;
typedef  TYPE_8__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SCIF_SAS_RESPONSE_DATA_LENGTH ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  scif_sas_controller_start_high_priority_io ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS FUNC11(
   SCI_BASE_CONTROLLER_T    * controller,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T       * io_request
)
{
   SCIF_SAS_CONTROLLER_T    * fw_controller = (SCIF_SAS_CONTROLLER_T*)
                                              controller;
   SCIF_SAS_REMOTE_DEVICE_T * fw_device     = (SCIF_SAS_REMOTE_DEVICE_T*)
                                              remote_device;
   SCIF_SAS_IO_REQUEST_T    * fw_io         = (SCIF_SAS_IO_REQUEST_T*)
                                              io_request;
   SCI_IO_STATUS core_completion_status =
                    FUNC7(fw_io->parent.core_object);

   U8 response_data[SCIF_SAS_RESPONSE_DATA_LENGTH];

   SCI_STATUS                 status;
   SCI_STATUS                 core_status;

   FUNC0(*(
      FUNC3(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_ready_complete_high_priority_io_handler(0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request
   ));

   // In high priority path, we ask the core to finish IO request before framework.

   // retrieve and save io response from core now.
   FUNC2(response_data,
          FUNC6(fw_io->parent.core_object),
          SCIF_SAS_RESPONSE_DATA_LENGTH
         );

   core_status = FUNC5(
                    fw_controller->core_object,
                    fw_device->core_object,
                    fw_io->parent.core_object
                 );

   fw_io->parent.state_handlers->destruct_handler(&fw_io->parent.parent);
   status = fw_device->domain->state_handlers->complete_high_priority_io_handler(
               &fw_device->domain->parent,
               remote_device,
               io_request,
               (void *)response_data,
               core_completion_status
            );

   if (status == SCI_SUCCESS)
      status = core_status;

   if (status == SCI_SUCCESS)
   {
       //issue DPC to start next internal io in high prioriy queue.
      if( !FUNC4(fw_controller->hprq.pool) )
         FUNC8(
            fw_controller,
            scif_sas_controller_start_high_priority_io,
            fw_controller
         );
   }
   else
   {
      FUNC1((
         FUNC3(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER,
         "Controller:0x%x IORequest:0x%x Status:0x%x CoreStatus:0x%x "
         "failure to complete IO\n",
         fw_controller, fw_io, status, core_status
      ));
   }

   return status;
}