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
struct ipmi_softc {int /*<<< orphan*/  ipmi_dev; } ;
struct ipmi_request {int ir_addr; int ir_requestlen; int ir_command; int* ir_request; int ir_compcode; int ir_replybuflen; int* ir_reply; int ir_replylen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmi_softc*) ; 
 int FUNC2 (int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_softc*) ; 
 int FUNC5 (struct ipmi_softc*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipmi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipmi_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ipmi_softc*,int) ; 

__attribute__((used)) static int
FUNC9(struct ipmi_softc *sc, struct ipmi_request *req)
{
	u_char *cp, data;
	int i, state;

	FUNC0(sc);

	/* Send the request. */
	if (!FUNC6(sc)) {
		FUNC3(sc->ipmi_dev, "KCS: Failed to start write\n");
		goto fail;
	}
#ifdef KCS_DEBUG
	device_printf(sc->ipmi_dev, "KCS: WRITE_START... ok\n");
#endif

	if (!FUNC7(sc, req->ir_addr)) {
		FUNC3(sc->ipmi_dev, "KCS: Failed to write address\n");
		goto fail;
	}
#ifdef KCS_DEBUG
	device_printf(sc->ipmi_dev, "KCS: Wrote address: %02x\n", req->ir_addr);
#endif

	if (req->ir_requestlen == 0) {
		if (!FUNC8(sc, req->ir_command)) {
			FUNC3(sc->ipmi_dev,
			    "KCS: Failed to write command\n");
			goto fail;
		}
#ifdef KCS_DEBUG
		device_printf(sc->ipmi_dev, "KCS: Wrote command: %02x\n",
		    req->ir_command);
#endif
	} else {
		if (!FUNC7(sc, req->ir_command)) {
			FUNC3(sc->ipmi_dev,
			    "KCS: Failed to write command\n");
			goto fail;
		}
#ifdef KCS_DEBUG
		device_printf(sc->ipmi_dev, "KCS: Wrote command: %02x\n",
		    req->ir_command);
#endif

		cp = req->ir_request;
		for (i = 0; i < req->ir_requestlen - 1; i++) {
			if (!FUNC7(sc, *cp++)) {
				FUNC3(sc->ipmi_dev,
				    "KCS: Failed to write data byte %d\n",
				    i + 1);
				goto fail;
			}
#ifdef KCS_DEBUG
			device_printf(sc->ipmi_dev, "KCS: Wrote data: %02x\n",
			    cp[-1]);
#endif
		}

		if (!FUNC8(sc, *cp)) {
			FUNC3(sc->ipmi_dev,
			    "KCS: Failed to write last dta byte\n");
			goto fail;
		}
#ifdef KCS_DEBUG
		device_printf(sc->ipmi_dev, "KCS: Wrote last data: %02x\n",
		    *cp);
#endif
	}

	/* Read the reply.  First, read the NetFn/LUN. */
	if (FUNC5(sc, &data) != 1) {
		FUNC3(sc->ipmi_dev, "KCS: Failed to read address\n");
		goto fail;
	}
#ifdef KCS_DEBUG
	device_printf(sc->ipmi_dev, "KCS: Read address: %02x\n", data);
#endif
	if (data != FUNC2(req->ir_addr)) {
		FUNC3(sc->ipmi_dev, "KCS: Reply address mismatch\n");
		goto fail;
	}

	/* Next we read the command. */
	if (FUNC5(sc, &data) != 1) {
		FUNC3(sc->ipmi_dev, "KCS: Failed to read command\n");
		goto fail;
	}
#ifdef KCS_DEBUG
	device_printf(sc->ipmi_dev, "KCS: Read command: %02x\n", data);
#endif
	if (data != req->ir_command) {
		FUNC3(sc->ipmi_dev, "KCS: Command mismatch\n");
		goto fail;
	}

	/* Next we read the completion code. */
	if (FUNC5(sc, &req->ir_compcode) != 1) {
		if (bootverbose) {
			FUNC3(sc->ipmi_dev,
			    "KCS: Failed to read completion code\n");
		}
		goto fail;
	}
#ifdef KCS_DEBUG
	device_printf(sc->ipmi_dev, "KCS: Read completion code: %02x\n",
	    req->ir_compcode);
#endif

	/* Finally, read the reply from the BMC. */
	i = 0;
	for (;;) {
		state = FUNC5(sc, &data);
		if (state == 0) {
			FUNC3(sc->ipmi_dev,
			    "KCS: Read failed on byte %d\n", i + 1);
			goto fail;
		}
		if (state == 2)
			break;
		if (i < req->ir_replybuflen) {
			req->ir_reply[i] = data;
#ifdef KCS_DEBUG
			device_printf(sc->ipmi_dev, "KCS: Read data %02x\n",
			    data);
		} else {
			device_printf(sc->ipmi_dev,
			    "KCS: Read short %02x byte %d\n", data, i + 1);
#endif
		}
		i++;
	}
	FUNC1(sc);
	req->ir_replylen = i;
#ifdef KCS_DEBUG
	device_printf(sc->ipmi_dev, "KCS: READ finished (%d bytes)\n", i);
	if (req->ir_replybuflen < i)
#else
	if (req->ir_replybuflen < i && req->ir_replybuflen != 0)
#endif
		FUNC3(sc->ipmi_dev,
		    "KCS: Read short: %zd buffer, %d actual\n",
		    req->ir_replybuflen, i);
	return (1);
fail:
	FUNC4(sc);
	FUNC1(sc);
	return (0);
}