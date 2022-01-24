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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_ether {int /*<<< orphan*/  ue_eaddr; int /*<<< orphan*/  ue_udev; int /*<<< orphan*/  ue_dev; } ;
typedef  size_t ssize_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  mac ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 size_t FUNC0 (int,char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (char const**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev, struct usb_ether* ue)
{
	phandle_t node;
	ssize_t i, proplen;
	uint8_t mac[sizeof(ue->ue_eaddr)];
	static const char *properties[] = {
	    "mac-address",
	    "local-mac-address"
	};

	if ((node = FUNC4(ue->ue_dev, ue->ue_udev)) == -1)
		return (ENXIO);
	for (i = 0; i < FUNC3(properties); ++i) {
		proplen = FUNC0(node, properties[i], mac, sizeof(mac));
		if (proplen == sizeof(mac) && FUNC1(mac)) {
			FUNC2(ue->ue_eaddr, mac, sizeof(ue->ue_eaddr));
			return (0);
		}
	}
	return (ENXIO);
}