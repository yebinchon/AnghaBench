#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
typedef  TYPE_1__ usb_device_request_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ u_char ;
struct run_softc {int mac_ver; int sc_flags; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_udev; } ;
struct firmware {int datasize; scalar_t__* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  RT2860_H2M_BBPAGENT ; 
 int /*<<< orphan*/  RT2860_H2M_INTSRC ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  RT2860_H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  RT2860_MCU_CMD_RFRESET ; 
 int RT2860_MCU_READY ; 
 int /*<<< orphan*/  RT2860_SYS_CTRL ; 
 int /*<<< orphan*/  RT2870_FW_BASE ; 
 int /*<<< orphan*/  RT2870_RESET ; 
 int RUN_FLAG_FWLOAD_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UT_WRITE_VENDOR_DEVICE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct firmware* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct run_softc*,int) ; 
 int FUNC8 (struct run_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct run_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct run_softc*,int /*<<< orphan*/ ,scalar_t__ const*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct run_softc *sc)
{
	usb_device_request_t req;
	const struct firmware *fw;
	const u_char *base;
	uint32_t tmp;
	int ntries, error;
	const uint64_t *temp;
	uint64_t bytes;

	FUNC1(sc);
	fw = FUNC5("runfw");
	FUNC0(sc);
	if (fw == NULL) {
		FUNC4(sc->sc_dev,
		    "failed loadfirmware of file %s\n", "runfw");
		return ENOENT;
	}

	if (fw->datasize != 8192) {
		FUNC4(sc->sc_dev,
		    "invalid firmware size (should be 8KB)\n");
		error = EINVAL;
		goto fail;
	}

	/*
	 * RT3071/RT3072 use a different firmware
	 * run-rt2870 (8KB) contains both,
	 * first half (4KB) is for rt2870,
	 * last half is for rt3071.
	 */
	base = fw->data;
	if ((sc->mac_ver) != 0x2860 &&
	    (sc->mac_ver) != 0x2872 &&
	    (sc->mac_ver) != 0x3070) { 
		base += 4096;
	}

	/* cheap sanity check */
	temp = fw->data;
	bytes = *temp;
	if (bytes != FUNC3(0xffffff0210280210ULL)) {
		FUNC4(sc->sc_dev, "firmware checksum failed\n");
		error = EINVAL;
		goto fail;
	}

	/* write microcode image */
	if (sc->sc_flags & RUN_FLAG_FWLOAD_NEEDED) {
		FUNC11(sc, RT2870_FW_BASE, base, 4096);
		FUNC10(sc, RT2860_H2M_MAILBOX_CID, 0xffffffff);
		FUNC10(sc, RT2860_H2M_MAILBOX_STATUS, 0xffffffff);
	}

	req.bmRequestType = UT_WRITE_VENDOR_DEVICE;
	req.bRequest = RT2870_RESET;
	FUNC2(req.wValue, 8);
	FUNC2(req.wIndex, 0);
	FUNC2(req.wLength, 0);
	if ((error = FUNC12(sc->sc_udev, &sc->sc_mtx, &req, NULL))
	    != 0) {
		FUNC4(sc->sc_dev, "firmware reset failed\n");
		goto fail;
	}

	FUNC7(sc, 10);

	FUNC10(sc, RT2860_H2M_BBPAGENT, 0);
	FUNC10(sc, RT2860_H2M_MAILBOX, 0);
	FUNC10(sc, RT2860_H2M_INTSRC, 0);
	if ((error = FUNC8(sc, RT2860_MCU_CMD_RFRESET, 0)) != 0)
		goto fail;

	/* wait until microcontroller is ready */
	for (ntries = 0; ntries < 1000; ntries++) {
		if ((error = FUNC9(sc, RT2860_SYS_CTRL, &tmp)) != 0)
			goto fail;
		if (tmp & RT2860_MCU_READY)
			break;
		FUNC7(sc, 10);
	}
	if (ntries == 1000) {
		FUNC4(sc->sc_dev,
		    "timeout waiting for MCU to initialize\n");
		error = ETIMEDOUT;
		goto fail;
	}
	FUNC4(sc->sc_dev, "firmware %s ver. %u.%u loaded\n",
	    (base == fw->data) ? "RT2870" : "RT3071",
	    *(base + 4092), *(base + 4093));

fail:
	FUNC6(fw, FIRMWARE_UNLOAD);
	return (error);
}