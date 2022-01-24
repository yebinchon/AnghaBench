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
struct usb_device_id {int driver_info; } ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {int /*<<< orphan*/  device; TYPE_1__ info; } ;
struct jtag_by_name {int jtag_interfaces; int /*<<< orphan*/  product_name; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int UFTDI_JTAG_CHECK_STRING ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ UFTDI_JTAG_IFACES_MAX ; 
 int UFTDI_JTAG_MASK ; 
 struct jtag_by_name* jtag_products_by_name ; 
 int FUNC1 (struct jtag_by_name*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC4(struct usb_attach_arg *uaa, const struct usb_device_id *id)
{
	int i, iface_bit;
	const char * product_name;
	const struct jtag_by_name *jbn;

	/* We only allocate 8 flag bits for jtag interface flags. */
	if (uaa->info.bIfaceIndex >= UFTDI_JTAG_IFACES_MAX)
		return (0);
	iface_bit = FUNC0(uaa->info.bIfaceIndex);

	/*
	 * If requested, search the name strings table and use the interface
	 * bits from that table when the product name string matches, else use
	 * the jtag interface bits from the main ID table.
	 */
	if ((id->driver_info & UFTDI_JTAG_MASK) == UFTDI_JTAG_CHECK_STRING) {
		product_name = FUNC3(uaa->device);
		for (i = 0; i < FUNC1(jtag_products_by_name); i++) {
			jbn = &jtag_products_by_name[i];
			if (FUNC2(product_name, jbn->product_name) != NULL &&
			    (jbn->jtag_interfaces & iface_bit) != 0)
				return (1);
		}
	} else if ((id->driver_info & iface_bit) != 0)
		return (1);

	return (0);
}