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
typedef  scalar_t__ usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct usb_interface {int /*<<< orphan*/ * idesc; } ;
struct usb_hid_descriptor {TYPE_1__* descrs; } ;
struct usb_device {int dummy; } ;
struct mtx {int dummy; } ;
struct malloc_type {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wDescriptorLength; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_ERR_INVAL ; 
 scalar_t__ USB_ERR_IOERROR ; 
 scalar_t__ USB_ERR_NOMEM ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 int /*<<< orphan*/  FUNC1 (void*,struct malloc_type*) ; 
 struct usb_hid_descriptor* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct malloc_type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 
 struct usb_interface* FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct usb_device*,struct mtx*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

usb_error_t
FUNC9(struct usb_device *udev, struct mtx *mtx,
    void **descp, uint16_t *sizep,
    struct malloc_type *mem, uint8_t iface_index)
{
	struct usb_interface *iface = FUNC7(udev, iface_index);
	struct usb_hid_descriptor *hid;
	usb_error_t err;

	if ((iface == NULL) || (iface->idesc == NULL)) {
		return (USB_ERR_INVAL);
	}
	hid = FUNC2
	    (FUNC6(udev), iface->idesc);

	if (hid == NULL) {
		return (USB_ERR_IOERROR);
	}
	*sizep = FUNC0(hid->descrs[0].wDescriptorLength);
	if (*sizep == 0) {
		return (USB_ERR_IOERROR);
	}
	if (mtx)
		FUNC5(mtx);

	*descp = FUNC3(*sizep, mem, M_ZERO | M_WAITOK);

	if (mtx)
		FUNC4(mtx);

	if (*descp == NULL) {
		return (USB_ERR_NOMEM);
	}
	err = FUNC8
	    (udev, mtx, *descp, *sizep, iface_index);

	if (err) {
		FUNC1(*descp, mem);
		*descp = NULL;
		return (err);
	}
	return (USB_ERR_NORMAL_COMPLETION);
}