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
 int /*<<< orphan*/  intmc ; 
 int /*<<< orphan*/  intms ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_controller*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(void *arg)
{
	struct nvme_controller *ctrlr = arg;

	FUNC1(ctrlr, intms, 1);
	FUNC0(ctrlr);
	FUNC1(ctrlr, intmc, 1);
}