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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*) ; 
 int FUNC3 (struct nvme_controller*) ; 

int
FUNC4(struct nvme_controller *ctrlr)
{
	int err;

	FUNC2(ctrlr);

	FUNC0(100*1000);

	err = FUNC1(ctrlr);
	if (err != 0)
		return err;
	return (FUNC3(ctrlr));
}