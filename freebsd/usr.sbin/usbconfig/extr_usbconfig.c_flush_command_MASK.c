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
typedef  scalar_t__ uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_2__ {int bmRequestType; } ;
struct options {int got_suspend; int got_resume; int got_reset; int got_set_config; int got_set_alt; int got_power_save; int got_power_on; int got_power_off; scalar_t__ got_any; int template; scalar_t__ bus; scalar_t__ addr; scalar_t__ got_dump_all_desc; scalar_t__ got_dump_curr_config; scalar_t__ got_dump_all_config; scalar_t__ got_dump_device_desc; int /*<<< orphan*/  got_show_iface_driver; scalar_t__ got_list; scalar_t__ got_dump_info; int /*<<< orphan*/  iface; scalar_t__ got_detach_kernel_driver; int /*<<< orphan*/  alt_index; int /*<<< orphan*/  config_index; scalar_t__ buffer; TYPE_1__ setup; scalar_t__ got_do_request; int /*<<< orphan*/  string_index; scalar_t__ got_dump_string; int /*<<< orphan*/  quirkname; scalar_t__ got_add_quirk; scalar_t__ got_remove_quirk; scalar_t__ got_addr; scalar_t__ got_bus; scalar_t__ got_get_template; scalar_t__ got_set_template; int /*<<< orphan*/  hi_rev; int /*<<< orphan*/  lo_rev; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; scalar_t__ got_add_device_quirk; scalar_t__ got_remove_device_quirk; scalar_t__ got_dump_device_quirks; scalar_t__ got_dump_quirk_names; } ;
struct libusb20_device {int dummy; } ;
struct libusb20_backend {int dummy; } ;
struct LIBUSB20_DEVICE_DESC_DECODED {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;

/* Variables and functions */
 int LIBUSB20_ENDPOINT_IN ; 
 int /*<<< orphan*/  LIBUSB20_POWER_OFF ; 
 int /*<<< orphan*/  LIBUSB20_POWER_ON ; 
 int /*<<< orphan*/  LIBUSB20_POWER_RESUME ; 
 int /*<<< orphan*/  LIBUSB20_POWER_SAVE ; 
 int /*<<< orphan*/  LIBUSB20_POWER_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct libusb20_backend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_backend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct libusb20_backend*) ; 
 int /*<<< orphan*/  FUNC3 (struct libusb20_backend*) ; 
 int /*<<< orphan*/  FUNC4 (struct libusb20_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC10 (char) ; 
 struct libusb20_device* FUNC11 (struct libusb20_backend*,struct libusb20_device*) ; 
 scalar_t__ FUNC12 (struct libusb20_backend*,int*) ; 
 scalar_t__ FUNC13 (struct libusb20_backend*,int) ; 
 scalar_t__ FUNC14 (struct libusb20_device*) ; 
 scalar_t__ FUNC15 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct libusb20_device*) ; 
 scalar_t__ FUNC17 (struct libusb20_device*) ; 
 struct LIBUSB20_DEVICE_DESC_DECODED* FUNC18 (struct libusb20_device*) ; 
 scalar_t__ FUNC19 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct libusb20_device*,TYPE_1__*,scalar_t__,size_t*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct libusb20_device*) ; 
 scalar_t__ FUNC22 (struct libusb20_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct libusb20_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  FUNC26 (char) ; 
 int /*<<< orphan*/  FUNC27 (struct options*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC28(struct libusb20_backend *pbe, struct options *opt)
{
	struct libusb20_device *pdev = NULL;
	uint32_t matches = 0;
	uint8_t dump_any;

	/* check for invalid option combinations */
	if ((opt->got_suspend +
	    opt->got_resume +
	    opt->got_reset +
	    opt->got_set_config +
	    opt->got_set_alt +
	    opt->got_power_save +
	    opt->got_power_on +
	    opt->got_power_off) > 1) {
		FUNC8(1, "can only specify one of 'set_config', "
		    "'set_alt', 'reset', 'suspend', 'resume', "
		    "'power_save', 'power_on' and 'power_off' "
		    "at the same time!");
	}
	if (opt->got_dump_quirk_names) {
		opt->got_any--;
		FUNC3(pbe);
	}
	if (opt->got_dump_device_quirks) {
		opt->got_any--;
		FUNC2(pbe);
	}
	if (opt->got_remove_device_quirk) {
		opt->got_any--;
		FUNC1(pbe,
		    opt->vid, opt->pid, opt->lo_rev, opt->hi_rev, opt->quirkname);
	}
	if (opt->got_add_device_quirk) {
		opt->got_any--;
		FUNC0(pbe,
		    opt->vid, opt->pid, opt->lo_rev, opt->hi_rev, opt->quirkname);
	}
	if (opt->got_set_template) {
		opt->got_any--;
		if (FUNC13(pbe, opt->template)) {
			FUNC9(stderr, "Setting USB template %u failed, "
			    "continuing.\n", opt->template);
		}
	}
	if (opt->got_get_template) {
		opt->got_any--;
		if (FUNC12(pbe, &opt->template))
			FUNC25("USB template: <unknown>\n");
		else
			FUNC25("USB template: %u\n", opt->template);
	}
	if (opt->got_any == 0) {
		/*
		 * do not scan through all the devices if there are no valid
		 * options
		 */
		goto done;
	}
	while ((pdev = FUNC11(pbe, pdev))) {

		if (opt->got_bus &&
		    (FUNC17(pdev) != opt->bus)) {
			continue;
		}
		if (opt->got_addr &&
		    (FUNC16(pdev) != opt->addr)) {
			continue;
		}
		matches++;

		if (opt->got_remove_quirk) {
			struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;
	
			ddesc = FUNC18(pdev);

			FUNC1(pbe,
			    ddesc->idVendor, ddesc->idProduct, 
			    ddesc->bcdDevice, ddesc->bcdDevice,
			    opt->quirkname);
		}

		if (opt->got_add_quirk) {
			struct LIBUSB20_DEVICE_DESC_DECODED *ddesc;
	
			ddesc = FUNC18(pdev);

			FUNC0(pbe,
			    ddesc->idVendor, ddesc->idProduct, 
			    ddesc->bcdDevice, ddesc->bcdDevice,
			    opt->quirkname);
		}

		if (FUNC19(pdev, 0)) {
			FUNC8(1, "could not open device");
		}
		if (opt->got_dump_string) {
			FUNC7(pdev, opt->string_index);
		}
		if (opt->got_do_request) {
			uint16_t actlen;
			uint16_t t;

			if (FUNC20(pdev, &opt->setup,
			    opt->buffer, &actlen, 5000 /* 5 seconds */ , 0)) {
				FUNC25("REQUEST = <ERROR>\n");
			} else if (!(opt->setup.bmRequestType &
			    LIBUSB20_ENDPOINT_IN)) {
				FUNC25("REQUEST = <OK>\n");
			} else {
				t = actlen;
				FUNC25("REQUEST = <");
				for (t = 0; t != actlen; t++) {
					FUNC25("0x%02x%s",
					    ((uint8_t *)opt->buffer)[t],
					    (t == (actlen - 1)) ? "" : " ");
				}
				FUNC25("><");
				for (t = 0; t != actlen; t++) {
					char c;

					c = ((uint8_t *)opt->buffer)[t];
					if ((c != '<') &&
					    (c != '>') && FUNC10(c)) {
						FUNC26(c);
					}
				}
				FUNC25(">\n");
			}
		}
		if (opt->got_set_config) {
			if (FUNC23(pdev,
			    opt->config_index)) {
				FUNC8(1, "could not set config index");
			}
		}
		if (opt->got_set_alt) {
			if (FUNC22(pdev, opt->iface,
			    opt->alt_index)) {
				FUNC8(1, "could not set alternate setting");
			}
		}
		if (opt->got_reset) {
			if (FUNC21(pdev)) {
				FUNC8(1, "could not reset device");
			}
		}
		if (opt->got_suspend) {
			if (FUNC24(pdev,
			    LIBUSB20_POWER_SUSPEND)) {
				FUNC8(1, "could not set suspend");
			}
		}
		if (opt->got_resume) {
			if (FUNC24(pdev,
			    LIBUSB20_POWER_RESUME)) {
				FUNC8(1, "could not set resume");
			}
		}
		if (opt->got_power_off) {
			if (FUNC24(pdev,
			    LIBUSB20_POWER_OFF)) {
				FUNC8(1, "could not set power OFF");
			}
		}
		if (opt->got_power_save) {
			if (FUNC24(pdev,
			    LIBUSB20_POWER_SAVE)) {
				FUNC8(1, "could not set power SAVE");
			}
		}
		if (opt->got_power_on) {
			if (FUNC24(pdev,
			    LIBUSB20_POWER_ON)) {
				FUNC8(1, "could not set power ON");
			}
		}
		if (opt->got_detach_kernel_driver) {
			if (FUNC15(pdev, opt->iface)) {
				FUNC8(1, "could not detach kernel driver");
			}
		}
		dump_any =
		    (opt->got_dump_all_desc ||
		    opt->got_dump_device_desc ||
		    opt->got_dump_curr_config ||
		    opt->got_dump_all_config ||
		    opt->got_dump_info);

		if (opt->got_list || dump_any) {
			FUNC6(pdev,
			    opt->got_show_iface_driver);
		}
		if (opt->got_dump_device_desc) {
			FUNC25("\n");
			FUNC5(pdev);
		}
		if (opt->got_dump_all_config) {
			FUNC25("\n");
			FUNC4(pdev, 1);
		} else if (opt->got_dump_curr_config) {
			FUNC25("\n");
			FUNC4(pdev, 0);
		} else if (opt->got_dump_all_desc) {
			FUNC25("\n");
			FUNC5(pdev);
			FUNC4(pdev, 1);
		}
		if (dump_any) {
			FUNC25("\n");
		}
		if (FUNC14(pdev)) {
			FUNC8(1, "could not close device");
		}
	}

	if (matches == 0) {
		FUNC25("No device match or lack of permissions.\n");
	}
done:
	FUNC27(opt);

	return;
}