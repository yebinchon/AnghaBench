#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  cdw0; } ;
struct nvme_pt_command {struct mtx* driver_lock; TYPE_1__ cpl; } ;
struct nvme_completion {int /*<<< orphan*/  status; int /*<<< orphan*/  cdw0; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_STATUS_P_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_pt_command*) ; 

__attribute__((used)) static void
FUNC4(void *arg, const struct nvme_completion *cpl)
{
	struct nvme_pt_command *pt = arg;
	struct mtx *mtx = pt->driver_lock;
	uint16_t status;

	FUNC0(&pt->cpl, sizeof(pt->cpl));
	pt->cpl.cdw0 = cpl->cdw0;

	status = cpl->status;
	status &= ~NVME_STATUS_P_MASK;
	pt->cpl.status = status;

	FUNC1(mtx);
	pt->driver_lock = NULL;
	FUNC3(pt);
	FUNC2(mtx);
}