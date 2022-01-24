#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ current_state_id; } ;
struct TYPE_16__ {TYPE_1__ state_machine; } ;
struct TYPE_18__ {int /*<<< orphan*/  controller; TYPE_2__ parent; } ;
struct TYPE_17__ {TYPE_8__* domain; struct TYPE_17__* containing_device; int /*<<< orphan*/ * ea_target_reset_request_scheduled; int /*<<< orphan*/  core_object; } ;
typedef  int /*<<< orphan*/  SCI_TASK_STATUS ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIF_SAS_REQUEST_T ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC9(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T       * fw_request,
   SCI_STATUS                 completion_status
)
{
   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_sas_remote_device_target_reset_complete! "
      "fw_device:0x%x fw_request:0x%x completion_status 0x%x\n",
      fw_device, fw_request, completion_status
   ));

   FUNC4(
      fw_device->domain->controller,
      fw_device,
      fw_request,
      (SCI_TASK_STATUS) completion_status
   );

   FUNC2(fw_device->core_object);

   //For expander attached device done target reset.
   if (fw_device->containing_device != NULL)
   {
      //search for all the devices in the domain to find other remote devices
      //needs to be target reset.
      SCIF_SAS_REMOTE_DEVICE_T * next_device;

      FUNC7(fw_device->containing_device);

      if( (next_device = FUNC5(fw_device->domain))
              != NULL )
      {
         FUNC8(
            next_device->containing_device,
            next_device,
            next_device->ea_target_reset_request_scheduled
         );

         next_device->ea_target_reset_request_scheduled = NULL;
      }
      else
      {
         //if the domain is in the DISCOVER state, we should resume the DISCOVER.
         if (fw_device->domain->parent.state_machine.current_state_id ==
                SCI_BASE_DOMAIN_STATE_DISCOVERING)
         {
            SCIF_SAS_REMOTE_DEVICE_T * top_expander = fw_device->containing_device;

            while(top_expander->containing_device != NULL)
               top_expander = top_expander->containing_device;

            FUNC6(fw_device->domain, top_expander);
         }
         else
         {
            //Tell driver to kick off Discover process. If the domain is already
            //in Discovery state, this discovery requst will not be carried on.
            FUNC3(
            fw_device->domain->controller, fw_device->domain );
         }
      }
   }
   else
   {
      //Tell driver to kick off Discover process. If the domain is already
      //in Discovery state, this discovery requst will not be carried on.
      FUNC3(
         fw_device->domain->controller, fw_device->domain );
   }
}