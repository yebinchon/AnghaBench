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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct usb_knowndev {char* vendorname; scalar_t__ vendor; scalar_t__ product; int flags; char* productname; } ;
struct usb_device_descriptor {int /*<<< orphan*/  iProduct; int /*<<< orphan*/  iManufacturer; int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct usb_device {int /*<<< orphan*/ * product; int /*<<< orphan*/ * manufacturer; struct usb_device_descriptor ddesc; void* serial; TYPE_1__ scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_USB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int USB_KNOWNDEV_NOPROD ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,scalar_t__) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct usb_knowndev* usb_knowndevs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct usb_device *udev)
{
	struct usb_device_descriptor *udd = &udev->ddesc;
#ifdef USB_VERBOSE
	const struct usb_knowndev *kdp;
#endif
	char *temp_ptr;
	size_t temp_size;
	uint16_t vendor_id;
	uint16_t product_id;
	uint8_t do_unlock;

	/* Protect scratch area */
	do_unlock = FUNC4(udev);

	temp_ptr = (char *)udev->scratch.data;
	temp_size = sizeof(udev->scratch.data);

	vendor_id = FUNC0(udd->idVendor);
	product_id = FUNC0(udd->idProduct);

	/* get serial number string */
	FUNC6(udev, NULL, temp_ptr, temp_size,
	    udev->ddesc.iSerialNumber);
	udev->serial = FUNC2(temp_ptr, M_USB);

	/* get manufacturer string */
	FUNC6(udev, NULL, temp_ptr, temp_size,
	    udev->ddesc.iManufacturer);
	FUNC3(temp_ptr);
	if (temp_ptr[0] != '\0')
		udev->manufacturer = FUNC2(temp_ptr, M_USB);

	/* get product string */
	FUNC6(udev, NULL, temp_ptr, temp_size,
	    udev->ddesc.iProduct);
	FUNC3(temp_ptr);
	if (temp_ptr[0] != '\0')
		udev->product = FUNC2(temp_ptr, M_USB);

#ifdef USB_VERBOSE
	if (udev->manufacturer == NULL || udev->product == NULL) {
		for (kdp = usb_knowndevs; kdp->vendorname != NULL; kdp++) {
			if (kdp->vendor == vendor_id &&
			    (kdp->product == product_id ||
			    (kdp->flags & USB_KNOWNDEV_NOPROD) != 0))
				break;
		}
		if (kdp->vendorname != NULL) {
			/* XXX should use pointer to knowndevs string */
			if (udev->manufacturer == NULL) {
				udev->manufacturer = strdup(kdp->vendorname,
				    M_USB);
			}
			if (udev->product == NULL &&
			    (kdp->flags & USB_KNOWNDEV_NOPROD) == 0) {
				udev->product = strdup(kdp->productname,
				    M_USB);
			}
		}
	}
#endif
	/* Provide default strings if none were found */
	if (udev->manufacturer == NULL) {
		FUNC1(temp_ptr, temp_size, "vendor 0x%04x", vendor_id);
		udev->manufacturer = FUNC2(temp_ptr, M_USB);
	}
	if (udev->product == NULL) {
		FUNC1(temp_ptr, temp_size, "product 0x%04x", product_id);
		udev->product = FUNC2(temp_ptr, M_USB);
	}

	if (do_unlock)
		FUNC5(udev);
}