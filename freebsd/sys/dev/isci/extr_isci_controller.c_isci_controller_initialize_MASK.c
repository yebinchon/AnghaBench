#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int uint32_t ;
typedef  void* uint16_t ;
struct ISCI_CONTROLLER {int queue_depth; int sim_queue_depth; int fail_on_task_timeout; int index; int /*<<< orphan*/  scif_controller_handle; TYPE_7__* phys; int /*<<< orphan*/  lock; int /*<<< orphan*/  sim; int /*<<< orphan*/  has_been_scanned; scalar_t__ oem_parameters_version; int /*<<< orphan*/  oem_parameters; TYPE_1__* isci; } ;
struct TYPE_12__ {int index; void* cdev_locate; scalar_t__ led_locate; void* cdev_fault; scalar_t__ led_fault; int /*<<< orphan*/  handle; } ;
struct TYPE_10__ {TYPE_2__* phys; void* stp_inactivity_timeout; void* ssp_inactivity_timeout; void* stp_max_occupancy_timeout; void* ssp_max_occupancy_timeout; void* no_outbound_task_timeout; } ;
struct TYPE_11__ {TYPE_3__ sds1; } ;
struct TYPE_9__ {void* max_speed_generation; } ;
struct TYPE_8__ {scalar_t__ oem_parameters_found; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  TYPE_4__ SCIC_USER_PARAMETERS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SCI_MAX_DOMAINS ; 
 int SCI_MAX_IO_REQUESTS ; 
 int SCI_MAX_PHYS ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ISCI_CONTROLLER*) ; 
 int /*<<< orphan*/  isci_led_fault_func ; 
 int /*<<< orphan*/  isci_led_locate_func ; 
 void* FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

SCI_STATUS FUNC15(struct ISCI_CONTROLLER *controller)
{
	SCIC_USER_PARAMETERS_T scic_user_parameters;
	SCI_CONTROLLER_HANDLE_T scic_controller_handle;
	char led_name[64];
	unsigned long tunable;
	uint32_t io_shortage;
	uint32_t fail_on_timeout;
	int i;

	scic_controller_handle =
	    FUNC11(controller->scif_controller_handle);

	if (controller->isci->oem_parameters_found == TRUE)
	{
		FUNC8(
		    scic_controller_handle,
		    &controller->oem_parameters,
		    (uint8_t)(controller->oem_parameters_version));
	}

	FUNC9(scic_controller_handle, &scic_user_parameters);

	if (FUNC1("hw.isci.no_outbound_task_timeout", &tunable))
		scic_user_parameters.sds1.no_outbound_task_timeout =
		    (uint8_t)tunable;

	if (FUNC1("hw.isci.ssp_max_occupancy_timeout", &tunable))
		scic_user_parameters.sds1.ssp_max_occupancy_timeout =
		    (uint16_t)tunable;

	if (FUNC1("hw.isci.stp_max_occupancy_timeout", &tunable))
		scic_user_parameters.sds1.stp_max_occupancy_timeout =
		    (uint16_t)tunable;

	if (FUNC1("hw.isci.ssp_inactivity_timeout", &tunable))
		scic_user_parameters.sds1.ssp_inactivity_timeout =
		    (uint16_t)tunable;

	if (FUNC1("hw.isci.stp_inactivity_timeout", &tunable))
		scic_user_parameters.sds1.stp_inactivity_timeout =
		    (uint16_t)tunable;

	if (FUNC1("hw.isci.max_speed_generation", &tunable))
		for (i = 0; i < SCI_MAX_PHYS; i++)
			scic_user_parameters.sds1.phys[i].max_speed_generation =
			    (uint8_t)tunable;

	FUNC10(scic_controller_handle, &scic_user_parameters);

	/* Scheduler bug in SCU requires SCIL to reserve some task contexts as a
	 *  a workaround - one per domain.
	 */
	controller->queue_depth = SCI_MAX_IO_REQUESTS - SCI_MAX_DOMAINS;

	if (FUNC0("hw.isci.controller_queue_depth",
	    &controller->queue_depth)) {
		controller->queue_depth = FUNC4(1, FUNC5(controller->queue_depth,
		    SCI_MAX_IO_REQUESTS - SCI_MAX_DOMAINS));
	}

	/* Reserve one request so that we can ensure we have one available TC
	 *  to do internal device resets.
	 */
	controller->sim_queue_depth = controller->queue_depth - 1;

	/* Although we save one TC to do internal device resets, it is possible
	 *  we could end up using several TCs for simultaneous device resets
	 *  while at the same time having CAM fill our controller queue.  To
	 *  simulate this condition, and how our driver handles it, we can set
	 *  this io_shortage parameter, which will tell CAM that we have a
	 *  large queue depth than we really do.
	 */
	io_shortage = 0;
	FUNC0("hw.isci.io_shortage", &io_shortage);
	controller->sim_queue_depth += io_shortage;

	fail_on_timeout = 1;
	FUNC0("hw.isci.fail_on_task_timeout", &fail_on_timeout);
	controller->fail_on_task_timeout = fail_on_timeout;

	/* Attach to CAM using xpt_bus_register now, then immediately freeze
	 *  the simq.  It will get released later when initial domain discovery
	 *  is complete.
	 */
	controller->has_been_scanned = FALSE;
	FUNC6(&controller->lock);
	FUNC2(controller);
	FUNC14(controller->sim, 1);
	FUNC7(&controller->lock);

	for (i = 0; i < SCI_MAX_PHYS; i++) {
		controller->phys[i].handle = scic_controller_handle;
		controller->phys[i].index = i;

		/* fault */
		controller->phys[i].led_fault = 0;
		FUNC13(led_name, "isci.bus%d.port%d.fault", controller->index, i);
		controller->phys[i].cdev_fault = FUNC3(isci_led_fault_func,
		    &controller->phys[i], led_name);
			
		/* locate */
		controller->phys[i].led_locate = 0;
		FUNC13(led_name, "isci.bus%d.port%d.locate", controller->index, i);
		controller->phys[i].cdev_locate = FUNC3(isci_led_locate_func,
		    &controller->phys[i], led_name);
	}

	return (FUNC12(controller->scif_controller_handle));
}