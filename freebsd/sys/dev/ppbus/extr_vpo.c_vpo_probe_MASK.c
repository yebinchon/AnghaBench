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
struct vpo_data {int vpo_isplus; int /*<<< orphan*/  vpo_io; int /*<<< orphan*/  vpo_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct vpo_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	device_t ppbus = FUNC1(dev);
	struct vpo_data *vpo;
	int error;

	vpo = FUNC0(dev);
	vpo->vpo_dev = dev;

	/* check ZIP before ZIP+ or imm_probe() will send controls to
	 * the printer or whatelse connected to the port */
	FUNC4(ppbus);
	if ((error = FUNC6(dev, &vpo->vpo_io)) == 0) {
		vpo->vpo_isplus = 0;
		FUNC2(dev,
				"Iomega VPI0 Parallel to SCSI interface");
	} else if ((error = FUNC3(dev, &vpo->vpo_io)) == 0) {
		vpo->vpo_isplus = 1;
		FUNC2(dev,
				"Iomega Matchmaker Parallel to SCSI interface");
	} else {
		FUNC5(ppbus);
		return (error);
	}
	FUNC5(ppbus);

	return (0);
}