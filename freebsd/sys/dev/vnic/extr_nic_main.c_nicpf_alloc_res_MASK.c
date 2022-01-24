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
struct nicpf {int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int VNIC_PF_REG_RID ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(struct nicpf *nic)
{
	device_t dev;
	int rid;

	dev = nic->dev;

	rid = VNIC_PF_REG_RID;
	nic->reg_base = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (nic->reg_base == NULL) {
		/* For verbose output print some more details */
		if (bootverbose) {
			FUNC1(dev,
			    "Could not allocate registers memory\n");
		}
		return (ENXIO);
	}

	return (0);
}