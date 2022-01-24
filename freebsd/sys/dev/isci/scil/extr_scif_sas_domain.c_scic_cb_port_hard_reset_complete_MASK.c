#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * list_head; } ;
struct TYPE_14__ {TYPE_2__ request_list; } ;
struct TYPE_13__ {int /*<<< orphan*/  core_object; TYPE_5__* domain; } ;
struct TYPE_10__ {TYPE_4__* device; } ;
struct TYPE_12__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_TASK_STATUS ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_PORT_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_FAST_LIST_ELEMENT_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_3__ SCIF_SAS_TASK_REQUEST_T ;
typedef  TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_5__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_SAS_HARD_RESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 

void FUNC8(
   SCI_CONTROLLER_HANDLE_T  controller,
   SCI_PORT_HANDLE_T        port,
   SCI_STATUS               completion_status
)
{
   SCIF_SAS_DOMAIN_T        * fw_domain = (SCIF_SAS_DOMAIN_T*)
                                   FUNC4(port);
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCI_FAST_LIST_ELEMENT_T  * element = fw_domain->request_list.list_head;
   SCIF_SAS_TASK_REQUEST_T  * task_request = NULL;

   FUNC0((
      FUNC1(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scic_cb_port_hard_reset_complete(0x%x, 0x%x, 0x%x) enter\n",
      controller, port, completion_status
   ));

   while (element != NULL)
   {
      task_request = (SCIF_SAS_TASK_REQUEST_T*) FUNC3(element);
      element = FUNC2(element);

      if (FUNC7(task_request)
             == SCI_SAS_HARD_RESET)
      {
         fw_device = task_request->parent.device;

         if (fw_device->domain == fw_domain)
         {
            FUNC5(fw_device->core_object);

            FUNC6(
               FUNC4(controller),
               fw_device,
               task_request,
               (SCI_TASK_STATUS) completion_status
            );

            break;
         }
      }
   }
}