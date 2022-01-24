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
typedef  size_t uint32_t ;
struct mpt_softc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 size_t MPI_DOORBELL_ADD_DWORDS_SHIFT ; 
 size_t MPI_DOORBELL_FUNCTION_SHIFT ; 
 size_t MPI_FUNCTION_HANDSHAKE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ MPT_DB_STATE_FAULT ; 
 scalar_t__ MPT_DB_STATE_READY ; 
 scalar_t__ MPT_DB_STATE_RUNNING ; 
 int /*<<< orphan*/  MPT_OFFSET_DOORBELL ; 
 int /*<<< orphan*/  MPT_OFFSET_INTR_STATUS ; 
 scalar_t__ MPT_OK ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*,char*,...) ; 
 size_t FUNC5 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mpt_softc*) ; 
 scalar_t__ FUNC7 (struct mpt_softc*) ; 
 scalar_t__ FUNC8 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct mpt_softc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct mpt_softc *mpt, size_t len, void *cmd)
{
	int i;
	uint32_t data, *data32;

	/* Check condition of the IOC */
	data = FUNC5(mpt);
	if ((FUNC2(data) != MPT_DB_STATE_READY
	  && FUNC2(data) != MPT_DB_STATE_RUNNING
	  && FUNC2(data) != MPT_DB_STATE_FAULT)
	 || FUNC1(data)) {
		FUNC4(mpt, "handshake aborted - invalid doorbell state\n");
		FUNC3(data);
		return (EBUSY);
	}

	/* We move things in 32 bit chunks */
	len = (len + 3) >> 2;
	data32 = cmd;

	/* Clear any left over pending doorbell interrupts */
	if (FUNC0(FUNC6(mpt)))
		FUNC9(mpt, MPT_OFFSET_INTR_STATUS, 0);

	/*
	 * Tell the handshake reg. we are going to send a command
         * and how long it is going to be.
	 */
	data = (MPI_FUNCTION_HANDSHAKE << MPI_DOORBELL_FUNCTION_SHIFT) |
	    (len << MPI_DOORBELL_ADD_DWORDS_SHIFT);
	FUNC9(mpt, MPT_OFFSET_DOORBELL, data);

	/* Wait for the chip to notice */
	if (FUNC8(mpt) != MPT_OK) {
		FUNC4(mpt, "mpt_send_handshake_cmd: db ignored\n");
		return (ETIMEDOUT);
	}

	/* Clear the interrupt */
	FUNC9(mpt, MPT_OFFSET_INTR_STATUS, 0);

	if (FUNC7(mpt) != MPT_OK) {
		FUNC4(mpt, "mpt_send_handshake_cmd: db ack timed out\n");
		return (ETIMEDOUT);
	}

	/* Send the command */
	for (i = 0; i < len; i++) {
		FUNC10(mpt, MPT_OFFSET_DOORBELL, *data32++);
		if (FUNC7(mpt) != MPT_OK) {
			FUNC4(mpt,
			    "mpt_send_handshake_cmd: timeout @ index %d\n", i);
			return (ETIMEDOUT);
		}
	}
	return MPT_OK;
}