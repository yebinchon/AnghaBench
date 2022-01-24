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
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(int maxdev)
{
	uint32_t id, class;
	uint8_t header;
	uint8_t device;
	int port;

	if (bootverbose) 
		FUNC4("pci_cfgcheck:\tdevice ");

	for (device = 0; device < maxdev; device++) {
		if (bootverbose) 
			FUNC4("%d ", device);

		port = FUNC3(0, device, 0, 0, 4);
		id = FUNC1(port);
		if (id == 0 || id == 0xffffffff)
			continue;

		port = FUNC3(0, device, 0, 8, 4);
		class = FUNC1(port) >> 8;
		if (bootverbose)
			FUNC4("[class=%06x] ", class);
		if (class == 0 || (class & 0xf870ff) != 0)
			continue;

		port = FUNC3(0, device, 0, 14, 1);
		header = FUNC0(port);
		if (bootverbose)
			FUNC4("[hdr=%02x] ", header);
		if ((header & 0x7e) != 0)
			continue;

		if (bootverbose)
			FUNC4("is there (id=%08x)\n", id);

		FUNC2();
		return (1);
	}
	if (bootverbose) 
		FUNC4("-- nothing found\n");

	FUNC2();
	return (0);
}