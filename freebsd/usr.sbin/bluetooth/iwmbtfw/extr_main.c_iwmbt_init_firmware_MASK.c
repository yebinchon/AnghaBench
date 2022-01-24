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
typedef  int /*<<< orphan*/  uint32_t ;
struct iwmbt_firmware {int dummy; } ;
typedef  int /*<<< orphan*/  libusb_device_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwmbt_firmware*) ; 
 scalar_t__ FUNC2 (struct iwmbt_firmware*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iwmbt_firmware*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(libusb_device_handle *hdl, const char *firmware_path,
    uint32_t *boot_param)
{
	struct iwmbt_firmware fw;
	int ret;

	FUNC0("loading %s", firmware_path);

	/* Read in the firmware */
	if (FUNC2(&fw, firmware_path) <= 0) {
		FUNC0("iwmbt_fw_read() failed");
		return (-1);
	}

	/* Load in the firmware */
	ret = FUNC3(hdl, &fw, boot_param);
	if (ret < 0)
		FUNC0("Loading firmware file failed");

	/* free it */
	FUNC1(&fw);

	return (ret);
}