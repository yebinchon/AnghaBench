#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_9__ {scalar_t__ isp_port; } ;
typedef  TYPE_1__ ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIU_NVRAM ; 
 int BIU_NVRAM_CLOCK ; 
 int BIU_NVRAM_DATAIN ; 
 int BIU_NVRAM_DATAOUT ; 
 int BIU_NVRAM_SELECT ; 
 int ISP1080_NVRAM_SIZE ; 
 int ISP2100_NVRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ISP_NVRAM_READ ; 
 int ISP_NVRAM_SIZE ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(ispsoftc_t *isp, int wo, uint16_t *rp)
{
	int i, cbits;
	uint16_t bit, rqst, junk;

	FUNC3(isp, BIU_NVRAM, BIU_NVRAM_SELECT);
	FUNC0(10);
	FUNC3(isp, BIU_NVRAM, BIU_NVRAM_SELECT|BIU_NVRAM_CLOCK);
	FUNC0(10);

	if (FUNC5(isp)) {
		wo &= ((ISP2100_NVRAM_SIZE >> 1) - 1);
		if (FUNC4(isp) && isp->isp_port) {
			wo += 128;
		}
		rqst = (ISP_NVRAM_READ << 8) | wo;
		cbits = 10;
	} else if (FUNC6(isp)) {
		wo &= ((ISP1080_NVRAM_SIZE >> 1) - 1);
		rqst = (ISP_NVRAM_READ << 8) | wo;
		cbits = 10;
	} else {
		wo &= ((ISP_NVRAM_SIZE >> 1) - 1);
		rqst = (ISP_NVRAM_READ << 6) | wo;
		cbits = 8;
	}

	/*
	 * Clock the word select request out...
	 */
	for (i = cbits; i >= 0; i--) {
		if ((rqst >> i) & 1) {
			bit = BIU_NVRAM_SELECT | BIU_NVRAM_DATAOUT;
		} else {
			bit = BIU_NVRAM_SELECT;
		}
		FUNC3(isp, BIU_NVRAM, bit);
		FUNC0(10);
		junk = FUNC1(isp, BIU_NVRAM);	/* force PCI flush */
		FUNC3(isp, BIU_NVRAM, bit | BIU_NVRAM_CLOCK);
		FUNC0(10);
		junk = FUNC1(isp, BIU_NVRAM);	/* force PCI flush */
		FUNC3(isp, BIU_NVRAM, bit);
		FUNC0(10);
		junk = FUNC1(isp, BIU_NVRAM);	/* force PCI flush */
	}
	/*
	 * Now read the result back in (bits come back in MSB format).
	 */
	*rp = 0;
	for (i = 0; i < 16; i++) {
		uint16_t rv;
		*rp <<= 1;
		FUNC3(isp, BIU_NVRAM, BIU_NVRAM_SELECT|BIU_NVRAM_CLOCK);
		FUNC0(10);
		rv = FUNC1(isp, BIU_NVRAM);
		if (rv & BIU_NVRAM_DATAIN) {
			*rp |= 1;
		}
		FUNC0(10);
		FUNC3(isp, BIU_NVRAM, BIU_NVRAM_SELECT);
		FUNC0(10);
		junk = FUNC1(isp, BIU_NVRAM);	/* force PCI flush */
	}
	FUNC3(isp, BIU_NVRAM, 0);
	FUNC0(10);
	junk = FUNC1(isp, BIU_NVRAM);	/* force PCI flush */
	FUNC2(isp, rp);
}