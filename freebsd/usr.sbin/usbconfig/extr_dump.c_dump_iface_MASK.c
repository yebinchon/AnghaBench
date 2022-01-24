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
struct LIBUSB20_INTERFACE_DESC_DECODED {int dummy; } ;
struct libusb20_interface {scalar_t__ num_endpoints; scalar_t__ endpoints; int /*<<< orphan*/  extra; struct LIBUSB20_INTERFACE_DESC_DECODED desc; } ;
struct libusb20_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct LIBUSB20_INTERFACE_DESC_DECODED*) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb20_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct libusb20_device *pdev,
    struct libusb20_interface *iface)
{
	struct LIBUSB20_INTERFACE_DESC_DECODED *idesc;
	uint8_t z;

	idesc = &iface->desc;
	FUNC0(DUMP2, idesc);
	FUNC2(&iface->extra, "  " "  " "  ");

	for (z = 0; z != iface->num_endpoints; z++) {
		FUNC3("\n     Endpoint %u\n", z);
		FUNC1(pdev, iface->endpoints + z);
	}
	return;
}