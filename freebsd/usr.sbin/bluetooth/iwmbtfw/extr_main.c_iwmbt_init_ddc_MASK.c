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
struct iwmbt_firmware {int dummy; } ;
typedef  int /*<<< orphan*/  libusb_device_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwmbt_firmware*) ; 
 scalar_t__ FUNC2 (struct iwmbt_firmware*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct iwmbt_firmware*) ; 

__attribute__((used)) static int
FUNC4(libusb_device_handle *hdl, const char *ddc_path)
{
	struct iwmbt_firmware ddc;
	int ret;

	FUNC0("loading %s", ddc_path);

	/* Read in the DDC file */
	if (FUNC2(&ddc, ddc_path) <= 0) {
		FUNC0("iwmbt_fw_read() failed");
		return (-1);
	}

	/* Load in the DDC file */
	ret = FUNC3(hdl, &ddc);
	if (ret < 0)
		FUNC0("Loading DDC file failed");

	/* free it */
	FUNC1(&ddc);

	return (ret);
}