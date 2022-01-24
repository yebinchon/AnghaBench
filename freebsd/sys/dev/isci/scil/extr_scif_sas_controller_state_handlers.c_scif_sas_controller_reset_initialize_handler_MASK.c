#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t U32 ;
struct TYPE_9__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {TYPE_2__ parent; int /*<<< orphan*/  core_object; TYPE_1__ hprq; int /*<<< orphan*/ * domains; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_3__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_INITIALIZATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_INITIALIZED ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_INITIALIZING ; 
 size_t SCI_MAX_DOMAINS ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC9(
   SCI_BASE_CONTROLLER_T    * controller
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)controller;
   SCI_STATUS              status;
   U32                     index;

   FUNC1(*(
      FUNC2(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_controller_reset_initialize_handler(0x%x) enter\n",
      controller
   ));

   FUNC3(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_INITIALIZING
   );

   FUNC6(fw_controller);

   // Perform any domain object initialization that is necessary.
   for (index = 0; index < SCI_MAX_DOMAINS; index++)
      FUNC8(&fw_controller->domains[index]);

   FUNC5(fw_controller, &fw_controller->hprq.lock);

   // Attempt to initialize the core controller.
   status = FUNC4(fw_controller->core_object);
   if (status == SCI_SUCCESS)
   {
      FUNC3(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_INITIALIZED
      );
   }

   if (status != SCI_SUCCESS)
   {
      // Initialization failed, Release resources and do not change state
      FUNC7(fw_controller);

      FUNC0((
         FUNC2(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
         "Controller:0x%x Status:0x%x unable to successfully initialize.\n",
         fw_controller, status
      ));
   }

   return status;
}