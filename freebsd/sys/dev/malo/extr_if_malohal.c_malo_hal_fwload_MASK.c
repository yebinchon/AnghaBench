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
struct malo_hal {scalar_t__* mh_cmdbuf; int /*<<< orphan*/  mh_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int MALO_A2HRIC_BIT_MASK ; 
 int MALO_FW_CHECK_USECS ; 
 int MALO_FW_MAX_NUM_CHECKS ; 
 scalar_t__ MALO_HOSTCMD_STA_FWRDY_SIGNATURE ; 
 scalar_t__ MALO_HOSTCMD_STA_MODE ; 
 int /*<<< orphan*/  MALO_REG_A2H_INTERRUPT_CAUSE ; 
 int /*<<< orphan*/  MALO_REG_A2H_INTERRUPT_CLEAR_SEL ; 
 int /*<<< orphan*/  MALO_REG_A2H_INTERRUPT_MASK ; 
 int /*<<< orphan*/  MALO_REG_A2H_INTERRUPT_STATUS_MASK ; 
 int /*<<< orphan*/  MALO_REG_GEN_PTR ; 
 int /*<<< orphan*/  MALO_REG_INT_CODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct malo_hal*) ; 
 int FUNC3 (struct malo_hal*,char*) ; 
 int FUNC4 (struct malo_hal*,char*) ; 
 scalar_t__ FUNC5 (struct malo_hal*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct malo_hal*) ; 
 int /*<<< orphan*/  FUNC7 (struct malo_hal*) ; 
 int /*<<< orphan*/  FUNC8 (struct malo_hal*,int /*<<< orphan*/ ,int) ; 

int
FUNC9(struct malo_hal *mh, char *helper, char *firmware)
{
	int error, i;
	uint32_t fwreadysig, opmode;

	/*
	 * NB: now malo(4) supports only STA mode.  It will be better if it
	 * supports AP mode.
	 */
	fwreadysig = MALO_HOSTCMD_STA_FWRDY_SIGNATURE;
	opmode = MALO_HOSTCMD_STA_MODE;

	FUNC2(mh);

	FUNC8(mh, MALO_REG_A2H_INTERRUPT_CLEAR_SEL,
	    MALO_A2HRIC_BIT_MASK);
	FUNC8(mh, MALO_REG_A2H_INTERRUPT_CAUSE, 0x00);
	FUNC8(mh, MALO_REG_A2H_INTERRUPT_MASK, 0x00);
	FUNC8(mh, MALO_REG_A2H_INTERRUPT_STATUS_MASK,
	    MALO_A2HRIC_BIT_MASK);

	error = FUNC3(mh, helper);
	if (error != 0) {
		FUNC1(mh->mh_dev, "failed to load bootrom loader.\n");
		goto fail;
	}

	FUNC0(200 * MALO_FW_CHECK_USECS);

	error = FUNC4(mh, firmware);
	if (error != 0) {
		FUNC1(mh->mh_dev, "failed to load firmware.\n");
		goto fail;
	}

	/*
	 * Wait for firmware to startup; we monitor the INT_CODE register
	 * waiting for a signature to written back indicating it's ready to go.
	 */
	mh->mh_cmdbuf[1] = 0;

	if (opmode != MALO_HOSTCMD_STA_MODE)
		FUNC7(mh);
	
	for (i = 0; i < MALO_FW_MAX_NUM_CHECKS; i++) {
		FUNC8(mh, MALO_REG_GEN_PTR, opmode);
		FUNC0(MALO_FW_CHECK_USECS);
		if (FUNC5(mh, MALO_REG_INT_CODE) == fwreadysig) {
			FUNC8(mh, MALO_REG_INT_CODE, 0x00);
			return FUNC6(mh);
		}
	}

	return ETIMEDOUT;
fail:
	FUNC2(mh);

	return (error);
}