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
typedef  int uint32_t ;
struct nvme_controller {int /*<<< orphan*/  ready_timeout_in_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int NVME_CSTS_REG_RDY_MASK ; 
 int NVME_CSTS_REG_RDY_SHIFT ; 
 int FUNC1 (struct nvme_controller*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nvme_controller *ctrlr, int desired_val)
{
	int ms_waited;
	uint32_t csts;

	ms_waited = 0;
	while (1) {
		csts = FUNC1(ctrlr, csts);
		if (csts == 0xffffffff)		/* Hot unplug. */
			return (ENXIO);
		if (((csts >> NVME_CSTS_REG_RDY_SHIFT) & NVME_CSTS_REG_RDY_MASK)
		    == desired_val)
			break;
		if (ms_waited++ > ctrlr->ready_timeout_in_ms) {
			FUNC2(ctrlr, "controller ready did not become %d "
			    "within %d ms\n", desired_val, ctrlr->ready_timeout_in_ms);
			return (ENXIO);
		}
		FUNC0(1000);
	}

	return (0);
}