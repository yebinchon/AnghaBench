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
typedef  int uint8_t ;
struct nvme_controller {int dummy; } ;

/* Variables and functions */
 int NVME_CRIT_WARN_ST_AVAILABLE_SPARE ; 
 int NVME_CRIT_WARN_ST_DEVICE_RELIABILITY ; 
 int NVME_CRIT_WARN_ST_READ_ONLY ; 
 int NVME_CRIT_WARN_ST_RESERVED_MASK ; 
 int NVME_CRIT_WARN_ST_TEMPERATURE ; 
 int NVME_CRIT_WARN_ST_VOLATILE_MEMORY_BACKUP ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_controller*,char*,...) ; 

__attribute__((used)) static void
FUNC1(struct nvme_controller *ctrlr,
    uint8_t state)
{

	if (state & NVME_CRIT_WARN_ST_AVAILABLE_SPARE)
		FUNC0(ctrlr, "available spare space below threshold\n");

	if (state & NVME_CRIT_WARN_ST_TEMPERATURE)
		FUNC0(ctrlr, "temperature above threshold\n");

	if (state & NVME_CRIT_WARN_ST_DEVICE_RELIABILITY)
		FUNC0(ctrlr, "device reliability degraded\n");

	if (state & NVME_CRIT_WARN_ST_READ_ONLY)
		FUNC0(ctrlr, "media placed in read only mode\n");

	if (state & NVME_CRIT_WARN_ST_VOLATILE_MEMORY_BACKUP)
		FUNC0(ctrlr, "volatile memory backup device failed\n");

	if (state & NVME_CRIT_WARN_ST_RESERVED_MASK)
		FUNC0(ctrlr,
		    "unknown critical warning(s): state = 0x%02x\n", state);
}