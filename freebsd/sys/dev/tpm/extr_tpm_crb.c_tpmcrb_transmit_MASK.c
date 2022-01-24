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
struct tpmcrb_sc {size_t cmd_buf_size; scalar_t__ rsp_off; int /*<<< orphan*/  cmd_off; } ;
struct tpm_sc {int pending_data_length; int /*<<< orphan*/ * buf; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int E2BIG ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_sc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 int TPM_BUFSIZE ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_CANCEL ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_CANCEL_CMD ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_REQ ; 
 int TPM_CRB_CTRL_REQ_GO_IDLE ; 
 int TPM_CRB_CTRL_REQ_GO_READY ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_START ; 
 int TPM_CRB_CTRL_START_CMD ; 
 int /*<<< orphan*/  TPM_CRB_CTRL_STS ; 
 int TPM_CRB_CTRL_STS_ERR_BIT ; 
 int TPM_CRB_CTRL_STS_IDLE_BIT ; 
 int TPM_HEADER_SIZE ; 
 int TPM_TIMEOUT_C ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_sc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_sc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC12 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC13 (struct tpm_sc*,int /*<<< orphan*/ ) ; 

int
FUNC14(struct tpm_sc *sc, size_t length)
{
	struct tpmcrb_sc *crb_sc;
	uint32_t mask, curr_cmd;
	int timeout, bytes_available;

	crb_sc = (struct tpmcrb_sc *)sc;

	FUNC8(&sc->dev_lock, SA_XLOCKED);

	if (length > crb_sc->cmd_buf_size) {
		FUNC7(sc->dev,
		    "Requested transfer is bigger than buffer size\n");
		return (E2BIG);
	}

	if (FUNC1(sc, TPM_CRB_CTRL_STS) & TPM_CRB_CTRL_STS_ERR_BIT) {
		FUNC7(sc->dev,
		    "Device has Error bit set\n");
		return (EIO);
	}
	if (!FUNC13(sc, 0)) {
		FUNC7(sc->dev,
		    "Failed to obtain locality\n");
		return (EIO);
	}
	/* Clear cancellation bit */
	FUNC2(sc, TPM_CRB_CTRL_CANCEL, !TPM_CRB_CTRL_CANCEL_CMD);

	/* Switch device to idle state if necessary */
	if (!(FUNC1(sc, TPM_CRB_CTRL_STS) & TPM_CRB_CTRL_STS_IDLE_BIT)) {
		FUNC0(sc, TPM_CRB_CTRL_REQ, TPM_CRB_CTRL_REQ_GO_IDLE);

		mask = TPM_CRB_CTRL_STS_IDLE_BIT;
		if (!FUNC10(sc, TPM_CRB_CTRL_STS,
			    mask, mask, TPM_TIMEOUT_C)) {
			FUNC7(sc->dev,
			    "Failed to transition to idle state\n");
			return (EIO);
		}
	}
	/* Switch to ready state */
	FUNC0(sc, TPM_CRB_CTRL_REQ, TPM_CRB_CTRL_REQ_GO_READY);

	mask = TPM_CRB_CTRL_REQ_GO_READY;
	if (!FUNC10(sc, TPM_CRB_CTRL_STS,
		    mask, !mask, TPM_TIMEOUT_C)) {
		FUNC7(sc->dev,
		    "Failed to transition to ready state\n");
		return (EIO);
	}

	/*
	 * Calculate timeout for current command.
	 * Command code is passed in bytes 6-10.
	 */
	curr_cmd = FUNC3(*(uint32_t *) (&sc->buf[6]));
	timeout = FUNC9(curr_cmd);

	/* Send command and tell device to process it. */
	FUNC6(sc->mem_res, crb_sc->cmd_off,
	    sc->buf, length);
	FUNC4(sc->mem_res, crb_sc->cmd_off,
	    length, BUS_SPACE_BARRIER_WRITE);

	FUNC2(sc, TPM_CRB_CTRL_START, TPM_CRB_CTRL_START_CMD);
	FUNC4(sc->mem_res, TPM_CRB_CTRL_START,
	    4, BUS_SPACE_BARRIER_WRITE);

	mask = ~0;
	if (!FUNC10(sc, TPM_CRB_CTRL_START, mask, ~mask, timeout)) {
		FUNC7(sc->dev,
		    "Timeout while waiting for device to process cmd\n");
		if (!FUNC11(sc))
			return (EIO);
	}

	/* Read response header. Length is passed in bytes 2 - 6. */
	FUNC5(sc->mem_res, crb_sc->rsp_off,
	    sc->buf, TPM_HEADER_SIZE);
	bytes_available = FUNC3(*(uint32_t *) (&sc->buf[2]));

	if (bytes_available > TPM_BUFSIZE || bytes_available < TPM_HEADER_SIZE) {
		FUNC7(sc->dev,
		    "Incorrect response size: %d\n",
		    bytes_available);
		return (EIO);
	}

	FUNC5(sc->mem_res, crb_sc->rsp_off + TPM_HEADER_SIZE,
	      &sc->buf[TPM_HEADER_SIZE], bytes_available - TPM_HEADER_SIZE);

	FUNC0(sc, TPM_CRB_CTRL_REQ, TPM_CRB_CTRL_REQ_GO_IDLE);

	FUNC12(sc);
	sc->pending_data_length = bytes_available;

	return (0);
}