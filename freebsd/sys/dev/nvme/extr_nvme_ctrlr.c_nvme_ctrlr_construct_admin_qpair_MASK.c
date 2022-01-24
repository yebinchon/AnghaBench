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
typedef  scalar_t__ uint32_t ;
struct nvme_qpair {size_t domain; scalar_t__ cpu; scalar_t__ id; } ;
struct nvme_controller {size_t domain; struct nvme_qpair adminq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NVME_ADMIN_ENTRIES ; 
 int /*<<< orphan*/  NVME_ADMIN_TRACKERS ; 
 scalar_t__ NVME_MAX_ADMIN_ENTRIES ; 
 scalar_t__ NVME_MIN_ADMIN_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__*) ; 
 int /*<<< orphan*/ * cpuset_domain ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,char*,scalar_t__) ; 
 int FUNC3 (struct nvme_qpair*,scalar_t__,int /*<<< orphan*/ ,struct nvme_controller*) ; 

__attribute__((used)) static int
FUNC4(struct nvme_controller *ctrlr)
{
	struct nvme_qpair	*qpair;
	uint32_t		num_entries;
	int			error;

	qpair = &ctrlr->adminq;
	qpair->id = 0;
	qpair->cpu = FUNC0(&cpuset_domain[ctrlr->domain]) - 1;
	qpair->domain = ctrlr->domain;

	num_entries = NVME_ADMIN_ENTRIES;
	FUNC1("hw.nvme.admin_entries", &num_entries);
	/*
	 * If admin_entries was overridden to an invalid value, revert it
	 *  back to our default value.
	 */
	if (num_entries < NVME_MIN_ADMIN_ENTRIES ||
	    num_entries > NVME_MAX_ADMIN_ENTRIES) {
		FUNC2(ctrlr, "invalid hw.nvme.admin_entries=%d "
		    "specified\n", num_entries);
		num_entries = NVME_ADMIN_ENTRIES;
	}

	/*
	 * The admin queue's max xfer size is treated differently than the
	 *  max I/O xfer size.  16KB is sufficient here - maybe even less?
	 */
	error = FUNC3(qpair, num_entries, NVME_ADMIN_TRACKERS,
	     ctrlr);
	return (error);
}