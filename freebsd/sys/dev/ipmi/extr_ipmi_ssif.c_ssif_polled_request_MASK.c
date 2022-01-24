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
typedef  int u_char ;
struct ipmi_softc {int /*<<< orphan*/  ipmi_ssif_smbus_address; int /*<<< orphan*/  ipmi_ssif_smbus; int /*<<< orphan*/  ipmi_dev; } ;
struct ipmi_request {int ir_addr; int ir_command; scalar_t__ ir_requestlen; int* ir_request; int ir_compcode; int* ir_reply; size_t ir_replybuflen; size_t ir_replylen; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int FUNC0 (int) ; 
 int SMBUS_DATA_SIZE ; 
 int /*<<< orphan*/  SMBUS_READ_CONT ; 
 int /*<<< orphan*/  SMBUS_READ_START ; 
 int /*<<< orphan*/  SMBUS_WRITE_CONT ; 
 int /*<<< orphan*/  SMBUS_WRITE_SINGLE ; 
 int /*<<< orphan*/  SMBUS_WRITE_START ; 
 int /*<<< orphan*/  SMB_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int hz ; 
 int FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct ipmi_softc *sc, struct ipmi_request *req)
{
	u_char ssif_buf[SMBUS_DATA_SIZE];
	device_t dev = sc->ipmi_dev;
	device_t smbus = sc->ipmi_ssif_smbus;
	u_char *cp, block, count, offset;
	size_t len;
	int error;

	/* Acquire the bus while we send the request. */
	if (FUNC11(smbus, dev, SMB_WAIT) != 0)
		return (0);

	/*
	 * First, send out the request.  Begin by filling out the first
	 * packet which includes the NetFn/LUN and command.
	 */
	ssif_buf[0] = req->ir_addr;
	ssif_buf[1] = req->ir_command;
	if (req->ir_requestlen > 0)
		FUNC1(req->ir_request, &ssif_buf[2],
		    FUNC4(req->ir_requestlen, SMBUS_DATA_SIZE - 2));

	/* Small requests are sent with a single command. */
	if (req->ir_requestlen <= 30) {
#ifdef SSIF_DEBUG
		dump_buffer(dev, "WRITE_SINGLE", ssif_buf,
		    req->ir_requestlen + 2);
#endif
		error = FUNC9(FUNC8(smbus,
			sc->ipmi_ssif_smbus_address, SMBUS_WRITE_SINGLE,
			req->ir_requestlen + 2, ssif_buf));
		if (error) {
#ifdef SSIF_ERROR_DEBUG
			device_printf(dev, "SSIF: WRITE_SINGLE error %d\n",
			    error);
#endif
			goto fail;
		}
	} else {
		/* Longer requests are sent out in 32-byte messages. */
#ifdef SSIF_DEBUG
		dump_buffer(dev, "WRITE_START", ssif_buf, SMBUS_DATA_SIZE);
#endif
		error = FUNC9(FUNC8(smbus,
			sc->ipmi_ssif_smbus_address, SMBUS_WRITE_START,
			SMBUS_DATA_SIZE, ssif_buf));
		if (error) {
#ifdef SSIF_ERROR_DEBUG
			device_printf(dev, "SSIF: WRITE_START error %d\n",
			    error);
#endif
			goto fail;
		}

		len = req->ir_requestlen - (SMBUS_DATA_SIZE - 2);
		cp = req->ir_request + (SMBUS_DATA_SIZE - 2);
		while (len > 0) {
#ifdef SSIF_DEBUG
			dump_buffer(dev, "WRITE_CONT", cp,
			    min(len, SMBUS_DATA_SIZE));
#endif
			error = FUNC9(FUNC8(smbus,
			    sc->ipmi_ssif_smbus_address, SMBUS_WRITE_CONT,
			    FUNC4(len, SMBUS_DATA_SIZE), cp));
			if (error) {
#ifdef SSIF_ERROR_DEBUG
				device_printf(dev, "SSIF: WRITE_CONT error %d\n",
				    error);
#endif
				goto fail;
			}
			cp += SMBUS_DATA_SIZE;
			len -= SMBUS_DATA_SIZE;
		}

		/*
		 * The final WRITE_CONT transaction has to have a non-zero
		 * length that is also not SMBUS_DATA_SIZE.  If our last
		 * WRITE_CONT transaction in the loop sent SMBUS_DATA_SIZE
		 * bytes, then len will be 0, and we send an extra 0x00 byte
		 * to terminate the transaction.
		 */
		if (len == 0) {
			char c = 0;

#ifdef SSIF_DEBUG
			dump_buffer(dev, "WRITE_CONT", &c, 1);
#endif
			error = FUNC9(FUNC8(smbus,
				sc->ipmi_ssif_smbus_address, SMBUS_WRITE_CONT,
				1, &c));
			if (error) {
#ifdef SSIF_ERROR_DEBUG
				device_printf(dev, "SSIF: WRITE_CONT error %d\n",
				    error);
#endif
				goto fail;
			}
		}
	}

	/* Release the bus. */
	FUNC10(smbus, dev);

	/* Give the BMC 100ms to chew on the request. */
	FUNC5("ssifwt", hz / 10);

	/* Try to read the first packet. */
read_start:
	if (FUNC11(smbus, dev, SMB_WAIT) != 0)
		return (0);
	count = SMBUS_DATA_SIZE;
	error = FUNC9(FUNC7(smbus,
	    sc->ipmi_ssif_smbus_address, SMBUS_READ_START, &count, ssif_buf));
	if (error == ENXIO || error == EBUSY) {
		FUNC10(smbus, dev);
#ifdef SSIF_DEBUG
		device_printf(dev, "SSIF: READ_START retry\n");
#endif
		/* Give the BMC another 10ms. */
		FUNC5("ssifwt", hz / 100);
		goto read_start;
	}
	if (error) {
#ifdef SSIF_ERROR_DEBUG
		device_printf(dev, "SSIF: READ_START failed: %d\n", error);
#endif
		goto fail;
	}
#ifdef SSIF_DEBUG
	device_printf("SSIF: READ_START: ok\n");
#endif

	/*
	 * If this is the first part of a multi-part read, then we need to
	 * skip the first two bytes.
	 */
	if (count == SMBUS_DATA_SIZE && ssif_buf[0] == 0 && ssif_buf[1] == 1)
		offset = 2;
	else
		offset = 0;

	/* We had better get the reply header. */
	if (count < 3) {
		FUNC2(dev, "SSIF: Short reply packet\n");
		goto fail;
	}

	/* Verify the NetFn/LUN. */
	if (ssif_buf[offset] != FUNC0(req->ir_addr)) {
		FUNC2(dev, "SSIF: Reply address mismatch\n");
		goto fail;
	}

	/* Verify the command. */
	if (ssif_buf[offset + 1] != req->ir_command) {
		FUNC2(dev, "SMIC: Command mismatch\n");
		goto fail;
	}

	/* Read the completion code. */
	req->ir_compcode = ssif_buf[offset + 2];

	/* If this is a single read, just copy the data and return. */
	if (offset == 0) {
#ifdef SSIF_DEBUG
		dump_buffer(dev, "READ_SINGLE", ssif_buf, count);
#endif
		len = count - 3;
		FUNC1(&ssif_buf[3], req->ir_reply,
		    FUNC4(req->ir_replybuflen, len));
		goto done;
	}

	/*
	 * This is the first part of a multi-read transaction, so copy
	 * out the payload and start looping.
	 */
#ifdef SSIF_DEBUG
	dump_buffer(dev, "READ_START", ssif_buf + 2, count - 2);
#endif
	FUNC1(&ssif_buf[5], req->ir_reply, FUNC4(req->ir_replybuflen, count - 5));
	len = count - 5;
	block = 1;

	for (;;) {
		/* Read another packet via READ_CONT. */
		count = SMBUS_DATA_SIZE;
		error = FUNC9(FUNC7(smbus,
		    sc->ipmi_ssif_smbus_address, SMBUS_READ_CONT, &count,
		    ssif_buf));
		if (error) {
#ifdef SSIF_ERROR_DEBUG
			printf("SSIF: READ_CONT failed: %d\n", error);
#endif
			goto fail;
		}
#ifdef SSIF_DEBUG
		device_printf(dev, "SSIF: READ_CONT... ok\n");
#endif

		/* Verify the block number.  0xff marks the last block. */
		if (ssif_buf[0] != 0xff && ssif_buf[0] != block) {
			FUNC2(dev, "SSIF: Read wrong block %d %d\n",
			    ssif_buf[0], block);
			goto fail;
		}
		if (ssif_buf[0] != 0xff && count < SMBUS_DATA_SIZE) {
			FUNC2(dev,
			    "SSIF: Read short middle block, length %d\n",
			    count);
			goto fail;
		}
#ifdef SSIF_DEBUG
		if (ssif_buf[0] == 0xff)
			dump_buffer(dev, "READ_END", ssif_buf + 1, count - 1);
		else
			dump_buffer(dev, "READ_CONT", ssif_buf + 1, count - 1);
#endif
		if (len < req->ir_replybuflen)
			FUNC1(&ssif_buf[1], &req->ir_reply[len],
			    FUNC4(req->ir_replybuflen - len, count - 1));
		len += count - 1;

		/* If this was the last block we are done. */
		if (ssif_buf[0] != 0xff)
			break;
		block++;
	}

done:
	/* Save the total length and return success. */
	req->ir_replylen = len;
	FUNC10(smbus, dev);
	return (1);

fail:
	FUNC10(smbus, dev);
	return (0);
}