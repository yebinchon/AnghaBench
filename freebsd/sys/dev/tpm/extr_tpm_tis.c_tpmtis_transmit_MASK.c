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
struct tpm_sc {size_t pending_data_length; int /*<<< orphan*/  dev; int /*<<< orphan*/ * buf; void* intr_type; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int EIO ; 
 int FUNC0 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 size_t TPM_BUFSIZE ; 
 size_t TPM_HEADER_SIZE ; 
 void* TPM_INT_STS_DATA_AVAIL ; 
 void* TPM_INT_STS_VALID ; 
 int /*<<< orphan*/  TPM_STS ; 
 int /*<<< orphan*/  TPM_STS_CMD_START ; 
 int TPM_STS_DATA_AVAIL ; 
 int TPM_STS_DATA_EXPECTED ; 
 int TPM_STS_VALID ; 
 int TPM_TIMEOUT_C ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_sc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct tpm_sc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tpm_sc*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tpm_sc*) ; 
 int /*<<< orphan*/  FUNC11 (struct tpm_sc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tpm_sc*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct tpm_sc *sc, size_t length)
{
	size_t bytes_available;
	uint32_t mask, curr_cmd;
	int timeout;

	FUNC5(&sc->dev_lock, SA_XLOCKED);

	if (!FUNC11(sc, 0)) {
		FUNC4(sc->dev,
		    "Failed to obtain locality\n");
		return (EIO);
	}
	if (!FUNC8(sc)) {
		FUNC4(sc->dev,
		    "Failed to switch to ready state\n");
		return (EIO);
	}
	if (!FUNC12(sc, length, sc->buf)) {
		FUNC4(sc->dev,
		    "Failed to write cmd to device\n");
		return (EIO);
	}

	mask = TPM_STS_VALID;
	sc->intr_type = TPM_INT_STS_VALID;
	if (!FUNC7(sc, TPM_STS, mask, mask, TPM_TIMEOUT_C)) {
		FUNC4(sc->dev,
		    "Timeout while waiting for valid bit\n");
		return (EIO);
	}
	if (FUNC0(sc, TPM_STS) & TPM_STS_DATA_EXPECTED) {
		FUNC4(sc->dev,
		    "Device expects more data even though we already"
		    " sent everything we had\n");
		return (EIO);
	}

	/*
	 * Calculate timeout for current command.
	 * Command code is passed in bytes 6-10.
	 */
	curr_cmd = FUNC2(*(uint32_t *) (&sc->buf[6]));
	timeout = FUNC6(curr_cmd);

	FUNC1(sc, TPM_STS, TPM_STS_CMD_START);
	FUNC3(sc->mem_res, TPM_STS, 4, BUS_SPACE_BARRIER_WRITE);

	mask = TPM_STS_DATA_AVAIL | TPM_STS_VALID;
	sc->intr_type = TPM_INT_STS_DATA_AVAIL;
	if (!FUNC7(sc, TPM_STS, mask, mask, timeout)) {
		FUNC4(sc->dev,
		    "Timeout while waiting for device to process cmd\n");
		/*
		 * Switching to ready state also cancels processing
		 * current command
		 */
		if (!FUNC8(sc))
			return (EIO);

		/*
		 * After canceling a command we should get a response,
		 * check if there is one.
		 */
		sc->intr_type = TPM_INT_STS_DATA_AVAIL;
		if (!FUNC7(sc, TPM_STS, mask, mask, TPM_TIMEOUT_C))
			return (EIO);
	}
	/* Read response header. Length is passed in bytes 2 - 6. */
	if(!FUNC9(sc, TPM_HEADER_SIZE, sc->buf)) {
		FUNC4(sc->dev,
		    "Failed to read response header\n");
		return (EIO);
	}
	bytes_available = FUNC2(*(uint32_t *) (&sc->buf[2]));

	if (bytes_available > TPM_BUFSIZE || bytes_available < TPM_HEADER_SIZE) {
		FUNC4(sc->dev,
		    "Incorrect response size: %zu\n",
		    bytes_available);
		return (EIO);
	}
	if(!FUNC9(sc, bytes_available - TPM_HEADER_SIZE,
	    &sc->buf[TPM_HEADER_SIZE])) {
		FUNC4(sc->dev,
		    "Failed to read response\n");
		return (EIO);
	}
	FUNC10(sc);
	sc->pending_data_length = bytes_available;

	return (0);
}