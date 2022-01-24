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
typedef  int uint8_t ;
struct libusb20_device {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct libusb20_device*) ; 
 int FUNC4 (struct libusb20_device*) ; 
 int FUNC5 (struct libusb20_device*) ; 
 char* FUNC6 (struct libusb20_device*) ; 
 scalar_t__ FUNC7 (struct libusb20_device*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct libusb20_device*) ; 
 unsigned int FUNC10 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct libusb20_device*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

void
FUNC13(struct libusb20_device *pdev, uint8_t show_ifdrv)
{
	char buf[128];
	uint8_t n;
	unsigned int usage;

	usage = FUNC10(pdev);

	FUNC12("%s, cfg=%u md=%s spd=%s pwr=%s (%umA)\n",
	    FUNC6(pdev),
	    FUNC5(pdev),
	    FUNC0(FUNC8(pdev)),
	    FUNC2(FUNC11(pdev)),
	    FUNC1(FUNC9(pdev)),
	    usage);

	if (!show_ifdrv)
		return;

	for (n = 0; n != 255; n++) {
		if (FUNC7(pdev, n, buf, sizeof(buf)))
			break;
		if (buf[0] == 0)
			continue;
		FUNC12("ugen%u.%u.%u: %s\n",
		    FUNC4(pdev),
		    FUNC3(pdev), n, buf);
	}
}