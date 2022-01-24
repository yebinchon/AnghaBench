#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_3__ {scalar_t__ ver; scalar_t__ aerl; } ;
struct nvme_controller {int async_event_config; size_t num_aers; struct nvme_async_event_request* aer; TYPE_1__ cdata; } ;
struct TYPE_4__ {int cdw0; } ;
struct nvme_completion_poll_status {TYPE_2__ cpl; scalar_t__ done; } ;
struct nvme_async_event_request {int dummy; } ;

/* Variables and functions */
 int NVME_CRIT_WARN_ST_AVAILABLE_SPARE ; 
 int NVME_CRIT_WARN_ST_DEVICE_RELIABILITY ; 
 int NVME_CRIT_WARN_ST_READ_ONLY ; 
 int NVME_CRIT_WARN_ST_TEMPERATURE ; 
 int NVME_CRIT_WARN_ST_VOLATILE_MEMORY_BACKUP ; 
 int /*<<< orphan*/  NVME_FEAT_TEMPERATURE_THRESHOLD ; 
 int /*<<< orphan*/  NVME_MAX_ASYNC_EVENTS ; 
 scalar_t__ FUNC0 (int,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  nvme_completion_poll_cb ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_completion_poll_status*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_controller*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_controller*,struct nvme_async_event_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_controller*,char*) ; 

__attribute__((used)) static void
FUNC8(struct nvme_controller *ctrlr)
{
	struct nvme_completion_poll_status	status;
	struct nvme_async_event_request		*aer;
	uint32_t				i;

	ctrlr->async_event_config = NVME_CRIT_WARN_ST_AVAILABLE_SPARE |
	    NVME_CRIT_WARN_ST_DEVICE_RELIABILITY |
	    NVME_CRIT_WARN_ST_READ_ONLY |
	    NVME_CRIT_WARN_ST_VOLATILE_MEMORY_BACKUP;
	if (ctrlr->cdata.ver >= FUNC0(1, 2))
		ctrlr->async_event_config |= 0x300;

	status.done = 0;
	FUNC4(ctrlr, NVME_FEAT_TEMPERATURE_THRESHOLD,
	    0, NULL, 0, nvme_completion_poll_cb, &status);
	FUNC3(&status);
	if (FUNC2(&status.cpl) ||
	    (status.cpl.cdw0 & 0xFFFF) == 0xFFFF ||
	    (status.cpl.cdw0 & 0xFFFF) == 0x0000) {
		FUNC7(ctrlr, "temperature threshold not supported\n");
	} else
		ctrlr->async_event_config |= NVME_CRIT_WARN_ST_TEMPERATURE;

	FUNC5(ctrlr,
	    ctrlr->async_event_config, NULL, NULL);

	/* aerl is a zero-based value, so we need to add 1 here. */
	ctrlr->num_aers = FUNC1(NVME_MAX_ASYNC_EVENTS, (ctrlr->cdata.aerl+1));

	for (i = 0; i < ctrlr->num_aers; i++) {
		aer = &ctrlr->aer[i];
		FUNC6(ctrlr, aer);
	}
}