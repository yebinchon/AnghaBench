#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* controller; int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_14__ {int /*<<< orphan*/  parent; TYPE_3__* state_handlers; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* stop_handler ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_13__ {TYPE_2__ parent; } ;
struct TYPE_11__ {int /*<<< orphan*/  hprq; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_5__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  scif_sas_domain_state_handler_table ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC10(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCIF_SAS_DOMAIN_T        * fw_domain = (SCIF_SAS_DOMAIN_T *)object;
   SCI_ABSTRACT_ELEMENT_T   * element   = FUNC2(
                                             &fw_domain->remote_device_list
                                          );

   FUNC1(
      fw_domain,
      scif_sas_domain_state_handler_table,
      SCI_BASE_DOMAIN_STATE_STOPPING
   );

   // This must be invoked after the state handlers are set to ensure
   // appropriate processing will occur if the user attempts to perform
   // additional actions.
   FUNC6(fw_domain);

   FUNC0((
      FUNC5(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_stopping_state_enter(0x%x) enter\n",
      fw_domain
   ));

   FUNC8(
      &fw_domain->controller->hprq, fw_domain
   );

   // Search the domain's list of devices and put them all in the STOPPING
   // state.
   while (element != NULL)
   {
      fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                  FUNC4(element);

      // This method will stop the core device.  The core will terminate
      // all IO requests currently outstanding.
      fw_device->state_handlers->parent.stop_handler(&fw_device->parent);

      element = FUNC3(element);
   }

   // Attempt to transition to the stopped state.
   FUNC7(fw_domain);
}