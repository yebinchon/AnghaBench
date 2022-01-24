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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct iwmbt_version {int fw_variant; } ;
struct iwmbt_boot_params {int limited_cce; } ;
typedef  int /*<<< orphan*/  libusb_device_handle ;
typedef  int /*<<< orphan*/  libusb_device ;
typedef  int /*<<< orphan*/  libusb_context ;

/* Variables and functions */
 int /*<<< orphan*/  _DEFAULT_IWMBT_FIRMWARE_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int iwmbt_do_debug ; 
 int iwmbt_do_info ; 
 int /*<<< orphan*/  FUNC4 (struct iwmbt_boot_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwmbt_version*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct iwmbt_boot_params*) ; 
 char* FUNC9 (struct iwmbt_version*,struct iwmbt_boot_params*,char*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct iwmbt_version*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ **) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 

int
FUNC27(int argc, char *argv[])
{
	libusb_context *ctx = NULL;
	libusb_device *dev = NULL;
	libusb_device_handle *hdl = NULL;
	static struct iwmbt_version ver;
	static struct iwmbt_boot_params params;
	uint32_t boot_param;
	int r;
	uint8_t bus_id = 0, dev_id = 0;
	int devid_set = 0;
	int n;
	char *firmware_dir = NULL;
	char *firmware_path = NULL;
	int retcode = 1;

	/* Parse command line arguments */
	while ((n = FUNC2(argc, argv, "Dd:f:hIm:p:v:")) != -1) {
		switch (n) {
		case 'd': /* ugen device name */
			devid_set = 1;
			if (FUNC24(optarg, &bus_id, &dev_id) < 0)
				FUNC26();
			break;
		case 'D':
			iwmbt_do_debug = 1;
			break;
		case 'f': /* firmware dir */
			if (firmware_dir)
				FUNC1(firmware_dir);
			firmware_dir = FUNC25(optarg);
			break;
		case 'I':
			iwmbt_do_info = 1;
			break;
		case 'h':
		default:
			FUNC26();
			break;
			/* NOT REACHED */
		}
	}

	/* Ensure the devid was given! */
	if (devid_set == 0) {
		FUNC26();
		/* NOTREACHED */
	}

	/* libusb setup */
	r = FUNC18(&ctx);
	if (r != 0) {
		FUNC6("libusb_init failed: code %d", r);
		FUNC0(127);
	}

	FUNC3("opening dev %d.%d", (int) bus_id, (int) dev_id);

	/* Find a device based on the bus/dev id */
	dev = FUNC7(ctx, bus_id, dev_id);
	if (dev == NULL) {
		FUNC6("device not found");
		goto shutdown;
	}

	/* XXX enforce that bInterfaceNumber is 0 */

	/* XXX enforce the device/product id if they're non-zero */

	/* Grab device handle */
	r = FUNC20(dev, &hdl);
	if (r != 0) {
		FUNC6("libusb_open() failed: code %d", r);
		goto shutdown;
	}

	/* Check if ng_ubt is attached */
	r = FUNC19(hdl, 0);
	if (r < 0) {
		FUNC6("libusb_kernel_driver_active() failed: code %d", r);
		goto shutdown;
	}
	if (r > 0) {
		FUNC11("Firmware has already been downloaded");
		retcode = 0;
		goto shutdown;
	}

	/* Get Intel version */
	r = FUNC10(hdl, &ver);
	if (r < 0) {
		FUNC3("iwmbt_get_version() failedL code %d", r);
		goto shutdown;
	}
	FUNC5(&ver);
	FUNC3("fw_variant=0x%02x", (int) ver.fw_variant);

	/* fw_variant = 0x06 bootloader mode / 0x23 operational mode */
	if (ver.fw_variant == 0x23) {
		FUNC11("Firmware has already been downloaded");
		retcode = 0;
		goto reset;
	}

	if (ver.fw_variant != 0x06){
		FUNC6("unknown fw_variant 0x%02x", (int) ver.fw_variant);
		goto shutdown;
	}

	/* Read Intel Secure Boot Params */
	r = FUNC8(hdl, &params);
	if (r < 0) {
		FUNC3("iwmbt_get_boot_params() failed!");
		goto shutdown;
	}
	FUNC4(&params);

	/* Check if firmware fragments are ACKed with a cmd complete event */
	if (params.limited_cce != 0x00) {
		FUNC6("Unsupported Intel firmware loading method (%u)",
		   params.limited_cce);
		goto shutdown;
	}

	/* Default the firmware path */
	if (firmware_dir == NULL)
		firmware_dir = FUNC25(_DEFAULT_IWMBT_FIRMWARE_PATH);

	firmware_path = FUNC9(&ver, &params, firmware_dir, "sfi");
	if (firmware_path == NULL)
		goto shutdown;

	FUNC3("firmware_path = %s", firmware_path);

	/* Download firmware and parse it for magic Intel Reset parameter */
	r = FUNC13(hdl, firmware_path, &boot_param);
	FUNC1(firmware_path);
	if (r < 0)
		goto shutdown;

	FUNC11("Firmware download complete");

	r = FUNC14(hdl, boot_param);
	if (r < 0) {
		FUNC3("iwmbt_intel_reset() failed!");
		goto shutdown;
	}

	FUNC11("Firmware operational");

	/* Once device is running in operational mode we can ignore failures */
	retcode = 0;

	/* Execute Read Intel Version one more time */
	r = FUNC10(hdl, &ver);
	if (r == 0)
		FUNC5(&ver);

	/* Apply the device configuration (DDC) parameters */
	firmware_path = FUNC9(&ver, &params, firmware_dir, "ddc");
	FUNC3("ddc_path = %s", firmware_path);
	if (firmware_path != NULL) {
		r = FUNC12(hdl, firmware_path);
		if (r == 0)
			FUNC11("DDC download complete");
		FUNC1(firmware_path);
	}

	/* Set Intel Event mask */
	r = FUNC15(hdl);
	if (r == 0)
		FUNC11("Intel Event Mask is set");

reset:

	/* Ask kernel driver to probe and attach device again */
	r = FUNC21(hdl);
	if (r != 0)
		FUNC6("libusb_reset_device() failed: %s",
		    FUNC22(r));

shutdown:

	/* Shutdown */

	if (hdl != NULL)
		FUNC16(hdl);

	if (dev != NULL)
		FUNC23(dev);

	if (ctx != NULL)
		FUNC17(ctx);

	if (retcode == 0)
		FUNC11("Firmware download is succesful!");
	else
		FUNC6("Firmware download failed!");

	return (retcode);
}