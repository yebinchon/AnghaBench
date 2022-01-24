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
struct nvme_controller {int dummy; } ;

/* Variables and functions */
 int NVME_CC_REG_SHN_MASK ; 
 int NVME_CC_REG_SHN_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 int NVME_SHN_NORMAL ; 
 scalar_t__ NVME_SHST_COMPLETE ; 
 int hz ; 
 int FUNC1 (struct nvme_controller*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_controller*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5(struct nvme_controller *ctrlr)
{
	uint32_t	cc;
	uint32_t	csts;
	int		ticks = 0;

	cc = FUNC1(ctrlr, cc);
	cc &= ~(NVME_CC_REG_SHN_MASK << NVME_CC_REG_SHN_SHIFT);
	cc |= NVME_SHN_NORMAL << NVME_CC_REG_SHN_SHIFT;
	FUNC2(ctrlr, cc, cc);

	while (1) {
		csts = FUNC1(ctrlr, csts);
		if (csts == 0xffffffff)		/* Hot unplug. */
			break;
		if (FUNC0(csts) == NVME_SHST_COMPLETE)
			break;
		if (ticks++ > 5*hz) {
			FUNC3(ctrlr, "did not complete shutdown within"
			    " 5 seconds of notification\n");
			break;
		}
		FUNC4("nvme shn", 1);
	}
}