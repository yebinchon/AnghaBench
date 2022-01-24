#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  pool; } ;
struct TYPE_21__ {TYPE_3__ hprq; } ;
struct TYPE_15__ {int /*<<< orphan*/  current_activity_phy_index; int /*<<< orphan*/  current_smp_request; } ;
struct TYPE_16__ {TYPE_1__ smp_device; } ;
struct TYPE_20__ {TYPE_2__ protocol_device; TYPE_4__* domain; } ;
struct TYPE_19__ {int /*<<< orphan*/  list_element; TYPE_6__* device; } ;
struct TYPE_18__ {TYPE_7__* controller; } ;
typedef  TYPE_5__ SCIF_SAS_REQUEST_T ;
typedef  TYPE_6__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_7__ SCIF_SAS_CONTROLLER_T ;
typedef  int /*<<< orphan*/  POINTER_UINT ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_FUNCTION_DISCOVER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  scif_sas_controller_start_high_priority_io ; 
 void* FUNC6 (TYPE_7__*,TYPE_6__*,int /*<<< orphan*/ ,void*,void*) ; 

void FUNC7(
   SCIF_SAS_REQUEST_T       * fw_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = fw_request->device;
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_device->domain->controller;
   void * new_command_handle;

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_target_reset_poll(0x%x) enter\n",
      fw_request
   ));

   // Before we construct new io using the same memory, we need to
   // remove the IO from the list of outstanding requests on the domain
   // so that we don't damage the domain's fast list of request.
   FUNC2(&fw_request->list_element);

   fw_device->protocol_device.smp_device.current_smp_request =
      SMP_FUNCTION_DISCOVER;

   //sent smp discover request to poll on remote device's coming back.
   //construct Discover command using the same memory as fw_request.
   new_command_handle = FUNC6(
      fw_device->domain->controller,
      fw_device,
      fw_device->protocol_device.smp_device.current_activity_phy_index,
      (void *)FUNC3(fw_request),
      (void *)fw_request
   );

   //put into the high priority queue.
   FUNC4(fw_controller->hprq.pool, (POINTER_UINT) new_command_handle);

   //schedule the DPC to start new Discover command.
   FUNC5(
      fw_controller, scif_sas_controller_start_high_priority_io, fw_controller
   );
}