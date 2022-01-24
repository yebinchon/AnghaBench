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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int num_entries; int /*<<< orphan*/  cpl_bus_addr; int /*<<< orphan*/  cmd_bus_addr; } ;
struct nvme_controller {TYPE_1__ adminq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NVME_AQA_REG_ACQS_MASK ; 
 int NVME_AQA_REG_ACQS_SHIFT ; 
 int NVME_AQA_REG_ASQS_MASK ; 
 int NVME_AQA_REG_ASQS_SHIFT ; 
 int NVME_CC_REG_AMS_SHIFT ; 
 int NVME_CC_REG_CSS_SHIFT ; 
 int NVME_CC_REG_EN_MASK ; 
 int NVME_CC_REG_EN_SHIFT ; 
 int NVME_CC_REG_IOCQES_SHIFT ; 
 int NVME_CC_REG_IOSQES_SHIFT ; 
 int NVME_CC_REG_MPS_SHIFT ; 
 int NVME_CC_REG_SHN_SHIFT ; 
 int NVME_CSTS_REG_RDY_MASK ; 
 int NVME_CSTS_REG_RDY_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  acq ; 
 int /*<<< orphan*/  asq ; 
 int FUNC1 (struct nvme_controller*,int) ; 
 int FUNC2 (struct nvme_controller*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_controller*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nvme_controller *ctrlr)
{
	uint32_t	cc;
	uint32_t	csts;
	uint32_t	aqa;
	uint32_t	qsize;
	uint8_t		en, rdy;
	int		err;

	cc = FUNC2(ctrlr, cc);
	csts = FUNC2(ctrlr, csts);

	en = (cc >> NVME_CC_REG_EN_SHIFT) & NVME_CC_REG_EN_MASK;
	rdy = (csts >> NVME_CSTS_REG_RDY_SHIFT) & NVME_CSTS_REG_RDY_MASK;

	/*
	 * See note in nvme_ctrlr_disable. Short circuit if we're already enabled.
	 */
	if (en == 1) {
		if (rdy == 1)
			return (0);
		else
			return (FUNC1(ctrlr, 1));
	} else {
		/* EN == 0 already wait for RDY == 0 or fail */
		err = FUNC1(ctrlr, 0);
		if (err != 0)
			return (err);
	}

	FUNC4(ctrlr, asq, ctrlr->adminq.cmd_bus_addr);
	FUNC0(5000);
	FUNC4(ctrlr, acq, ctrlr->adminq.cpl_bus_addr);
	FUNC0(5000);

	/* acqs and asqs are 0-based. */
	qsize = ctrlr->adminq.num_entries - 1;

	aqa = 0;
	aqa = (qsize & NVME_AQA_REG_ACQS_MASK) << NVME_AQA_REG_ACQS_SHIFT;
	aqa |= (qsize & NVME_AQA_REG_ASQS_MASK) << NVME_AQA_REG_ASQS_SHIFT;
	FUNC3(ctrlr, aqa, aqa);
	FUNC0(5000);

	/* Initialization values for CC */
	cc = 0;
	cc |= 1 << NVME_CC_REG_EN_SHIFT;
	cc |= 0 << NVME_CC_REG_CSS_SHIFT;
	cc |= 0 << NVME_CC_REG_AMS_SHIFT;
	cc |= 0 << NVME_CC_REG_SHN_SHIFT;
	cc |= 6 << NVME_CC_REG_IOSQES_SHIFT; /* SQ entry size == 64 == 2^6 */
	cc |= 4 << NVME_CC_REG_IOCQES_SHIFT; /* CQ entry size == 16 == 2^4 */

	/* This evaluates to 0, which is according to spec. */
	cc |= (PAGE_SIZE >> 13) << NVME_CC_REG_MPS_SHIFT;

	FUNC3(ctrlr, cc, cc);

	return (FUNC1(ctrlr, 1));
}