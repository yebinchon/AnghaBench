#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct isci_softc {int /*<<< orphan*/  device; } ;
struct cam_devq {int dummy; } ;
struct ISCI_CONTROLLER {int /*<<< orphan*/  lock; int /*<<< orphan*/ * sim; int /*<<< orphan*/  path; int /*<<< orphan*/  index; int /*<<< orphan*/  sim_queue_depth; struct isci_softc* isci; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ISCI_CONTROLLER*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cam_devq* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isci_action ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  isci_poll ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct ISCI_CONTROLLER *controller)
{
	struct isci_softc *isci = controller->isci;
	device_t parent = FUNC5(isci->device);
	int unit = FUNC6(isci->device);
	struct cam_devq *isci_devq = FUNC3(controller->sim_queue_depth);

	if(isci_devq == NULL) {
		FUNC7(0, "ISCI", "isci_devq is NULL \n");
		return (-1);
	}

	controller->sim = FUNC0(isci_action, isci_poll, "isci",
	    controller, unit, &controller->lock, controller->sim_queue_depth,
	    controller->sim_queue_depth, isci_devq);

	if(controller->sim == NULL) {
		FUNC7(0, "ISCI", "cam_sim_alloc... fails\n");
		FUNC4(isci_devq);
		return (-1);
	}

	if(FUNC10(controller->sim, parent, controller->index)
	    != CAM_SUCCESS) {
		FUNC7(0, "ISCI", "xpt_bus_register...fails \n");
		FUNC1(controller->sim, TRUE);
		FUNC8(&controller->lock);
		return (-1);
	}

	if(FUNC11(&controller->path, NULL,
	    FUNC2(controller->sim), CAM_TARGET_WILDCARD,
	    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC7(0, "ISCI", "xpt_create_path....fails\n");
		FUNC9(FUNC2(controller->sim));
		FUNC1(controller->sim, TRUE);
		FUNC8(&controller->lock);
		return (-1);
	}

	return (0);
}