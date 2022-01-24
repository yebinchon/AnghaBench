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
struct nvme_controller {int dummy; } ;
struct nvme_consumer {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct nvme_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_devclass ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_consumer*,struct nvme_controller*) ; 

__attribute__((used)) static void
FUNC4(struct nvme_consumer *cons)
{
	device_t		*devlist;
	struct nvme_controller	*ctrlr;
	int			dev_idx, devcount;

	if (FUNC1(nvme_devclass, &devlist, &devcount))
		return;

	for (dev_idx = 0; dev_idx < devcount; dev_idx++) {
		ctrlr = FUNC0(devlist[dev_idx]);
		FUNC3(cons, ctrlr);
	}

	FUNC2(devlist, M_TEMP);
}