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
struct vpo_data {int /*<<< orphan*/ * sim; int /*<<< orphan*/  vpo_io; scalar_t__ vpo_isplus; } ;
struct ppb_data {int /*<<< orphan*/  ppc_lock; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CAM_SUCCESS ; 
 struct vpo_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vpo_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cam_devq* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ppb_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vpo_action ; 
 int /*<<< orphan*/  vpo_poll ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct vpo_data *vpo = FUNC0(dev);
	device_t ppbus = FUNC5(dev);
	struct ppb_data *ppb = FUNC6(ppbus);	/* XXX: layering */
	struct cam_devq *devq;
	int error;

	/* low level attachment */
	if (vpo->vpo_isplus) {
		if ((error = FUNC8(&vpo->vpo_io)))
			return (error);
	} else {
		if ((error = FUNC11(&vpo->vpo_io)))
			return (error);
	}

	/*
	**	Now tell the generic SCSI layer
	**	about our bus.
	*/
	devq = FUNC3(/*maxopenings*/1);
	/* XXX What about low-level detach on error? */
	if (devq == NULL)
		return (ENXIO);

	vpo->sim = FUNC1(vpo_action, vpo_poll, "vpo", vpo,
				 FUNC7(dev), ppb->ppc_lock,
				 /*untagged*/1, /*tagged*/0, devq);
	if (vpo->sim == NULL) {
		FUNC4(devq);
		return (ENXIO);
	}

	FUNC9(ppbus);
	if (FUNC12(vpo->sim, dev, /*bus*/0) != CAM_SUCCESS) {
		FUNC2(vpo->sim, /*free_devq*/TRUE);
		FUNC10(ppbus);
		return (ENXIO);
	}
	FUNC10(ppbus);

	return (0);
}