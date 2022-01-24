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
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct libusb20_device*,scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (struct libusb20_device*,scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(struct libusb20_device *pdev, uint8_t str_index)
{
	char *pbuf;
	uint8_t n;
	uint8_t len;

	pbuf = FUNC4(256);
	if (pbuf == NULL)
		FUNC0(1, "out of memory");

	if (str_index == 0) {
		/* language table */
		if (FUNC3(pdev,
		    str_index, 0, pbuf, 256)) {
			FUNC5("STRING_0x%02x = <read error>\n", str_index);
		} else {
			FUNC5("STRING_0x%02x = ", str_index);
			len = (uint8_t)pbuf[0];
			for (n = 0; n != len; n++) {
				FUNC5("0x%02x%s", (uint8_t)pbuf[n],
				    (n != (len - 1)) ? ", " : "");
			}
			FUNC5("\n");
		}
	} else {
		/* ordinary string */
		if (FUNC2(pdev,
		    str_index, pbuf, 256)) {
			FUNC5("STRING_0x%02x = <read error>\n", str_index);
		} else {
			FUNC5("STRING_0x%02x = <%s>\n", str_index, pbuf);
		}
	}
	FUNC1(pbuf);
}