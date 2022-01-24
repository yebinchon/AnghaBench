#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;
struct TYPE_9__ {scalar_t__ clear_affiliation_during_controller_stop; } ;
struct TYPE_10__ {TYPE_2__ sas; } ;
struct TYPE_8__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_11__ {scalar_t__ current_domain_to_clear_affiliation; TYPE_3__ user_parameters; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_CONTROLLER_T ;
typedef  TYPE_4__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_INITIALIZATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC5(
   SCI_BASE_CONTROLLER_T * controller,
   U32                     timeout
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)controller;

   FUNC0((
      FUNC1(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_controller_ready_stop_handler(0x%x, 0x%x) enter\n",
      controller, timeout
   ));

   FUNC2(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_STOPPING
   );

   if (fw_controller->user_parameters.sas.clear_affiliation_during_controller_stop)
   {
      fw_controller->current_domain_to_clear_affiliation = 0;

      //clear affiliation first. After the last domain finishes clearing
      //affiliation, it will call back to controller to continue to stop.
      FUNC3(fw_controller);
   }
   else
      FUNC4(fw_controller);

   //Must return SUCCESS at this point.
   return SCI_SUCCESS;
}