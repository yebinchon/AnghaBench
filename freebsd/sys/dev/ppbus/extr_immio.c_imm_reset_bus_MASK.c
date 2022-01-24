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
struct vpoio_data {int /*<<< orphan*/  vpo_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PPB_INTR ; 
 int PPB_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vpoio_data*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vpoio_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_microseq ; 

int
FUNC4(struct vpoio_data *vpo)
{
	device_t ppbus = FUNC0(vpo->vpo_dev);
	int disconnected;

	/* first, connect to the drive and request the bus */
	FUNC1(vpo, PPB_WAIT|PPB_INTR, &disconnected, 1);

	if (!disconnected) {

		/* reset the SCSI bus */
		FUNC3(ppbus, vpo->vpo_dev, reset_microseq, NULL);

		/* then disconnect */
		FUNC2(vpo, NULL, 1);
	}

	return (0);
}