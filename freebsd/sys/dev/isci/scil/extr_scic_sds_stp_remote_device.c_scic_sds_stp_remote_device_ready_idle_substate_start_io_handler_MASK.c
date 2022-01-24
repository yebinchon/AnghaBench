#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* state_handlers; } ;
struct TYPE_16__ {int /*<<< orphan*/  ready_substate_machine; TYPE_4__* working_request; int /*<<< orphan*/  rnc; TYPE_6__* owning_port; } ;
struct TYPE_15__ {scalar_t__ sat_protocol; TYPE_3__* state_handlers; } ;
struct TYPE_13__ {scalar_t__ (* start_handler ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {TYPE_2__ parent; } ;
struct TYPE_12__ {scalar_t__ (* start_io_handler ) (TYPE_6__*,TYPE_5__*,TYPE_4__*) ;} ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REQUEST_T ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_4__ SCIC_SDS_REQUEST_T ;
typedef  TYPE_5__ SCIC_SDS_REMOTE_DEVICE_T ;

/* Variables and functions */
 scalar_t__ SAT_PROTOCOL_FPDMA ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD ; 
 int /*<<< orphan*/  SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC5(
   SCI_BASE_REMOTE_DEVICE_T * device,
   SCI_BASE_REQUEST_T       * request
)
{
   SCI_STATUS status;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCIC_SDS_REQUEST_T       * io_request  = (SCIC_SDS_REQUEST_T       *)request;


   // Will the port allow the io request to start?
   status = this_device->owning_port->state_handlers->start_io_handler(
      this_device->owning_port,
      this_device,
      io_request
   );

   if (status == SCI_SUCCESS)
   {
      status =
         FUNC2(this_device->rnc, io_request);

      if (status == SCI_SUCCESS)
      {
         status = io_request->state_handlers->parent.start_handler(request);
      }

      if (status == SCI_SUCCESS)
      {
         if (io_request->sat_protocol == SAT_PROTOCOL_FPDMA)
         {
            FUNC0(
               &this_device->ready_substate_machine,
               SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ
            );
         }
         else
         {
            this_device->working_request = io_request;

            FUNC0(
               &this_device->ready_substate_machine,
               SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD
            );
         }
      }

      FUNC1(this_device, io_request, status);
   }

   return status;
}