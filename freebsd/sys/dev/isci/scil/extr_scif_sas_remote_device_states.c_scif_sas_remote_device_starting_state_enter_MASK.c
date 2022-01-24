#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ operation_status; TYPE_3__* domain; int /*<<< orphan*/  parent; TYPE_2__* state_handlers; int /*<<< orphan*/  core_object; int /*<<< orphan*/  starting_substate_machine; int /*<<< orphan*/  destination_state; } ;
struct TYPE_9__ {int /*<<< orphan*/  controller; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* fail_handler ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ; 
 int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ; 
 int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  SCI_CONTROLLER_REMOTE_DEVICE_ERROR ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scif_sas_remote_device_state_handler_table ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC7(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   FUNC1(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STARTING
   );

   FUNC0((
      FUNC2(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "RemoteDevice:0x%x starting/configuring\n",
      fw_device
   ));

   fw_device->destination_state =
      SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_READY;

   FUNC3(&fw_device->starting_substate_machine);

   fw_device->operation_status = FUNC4(
                                    fw_device->core_object,
                                    SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT
                                 );

   if (fw_device->operation_status != SCI_SUCCESS)
   {
      fw_device->state_handlers->parent.fail_handler(&fw_device->parent);

      // Something is seriously wrong.  Starting the core remote device
      // shouldn't fail in anyway in this state.
      FUNC5(fw_device->domain->controller,
              SCI_CONTROLLER_REMOTE_DEVICE_ERROR);
   }
}