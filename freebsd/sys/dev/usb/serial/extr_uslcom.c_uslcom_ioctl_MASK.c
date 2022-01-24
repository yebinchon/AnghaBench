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
struct uslcom_softc {int sc_iface_no; int /*<<< orphan*/  sc_ucom; int /*<<< orphan*/  sc_udev; int /*<<< orphan*/  sc_partnum; } ;
struct usb_device_request {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; void* bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct ucom_softc {struct uslcom_softc* sc_parent; } ;
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  latch ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOIOCTL ; 
#define  USB_GET_GPIO 129 
#define  USB_SET_GPIO 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USLCOM_PARTNUM_CP2103 ; 
 int /*<<< orphan*/  USLCOM_PARTNUM_CP2104 ; 
 int /*<<< orphan*/  USLCOM_READ ; 
 int USLCOM_READ_LATCH ; 
 void* USLCOM_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  USLCOM_WRITE ; 
 int USLCOM_WRITE_LATCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct usb_device_request*,int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct ucom_softc *ucom, uint32_t cmd, caddr_t data,
    int flag, struct thread *td)
{
	struct uslcom_softc *sc = ucom->sc_parent;
	struct usb_device_request req;
	int error = 0;
	uint8_t latch;

	FUNC0("cmd=0x%08x\n", cmd);

	switch (cmd) {
	case USB_GET_GPIO:
		if (sc->sc_partnum < USLCOM_PARTNUM_CP2103) {
			error = ENODEV;
			break;
		}
		req.bmRequestType = USLCOM_READ;
		req.bRequest = USLCOM_VENDOR_SPECIFIC;
		FUNC1(req.wValue, USLCOM_READ_LATCH);
		FUNC1(req.wIndex, sc->sc_iface_no);
		FUNC1(req.wLength, sizeof(latch));

		if (FUNC2(sc->sc_udev, &sc->sc_ucom,
		    &req, &latch, 0, 1000)) {
			FUNC0("Get LATCH failed\n");
			error = EIO;
		}
		*(int *)data = latch;
		break;

	case USB_SET_GPIO:
		if (sc->sc_partnum < USLCOM_PARTNUM_CP2103)
			error = ENODEV;
		else if ((sc->sc_partnum == USLCOM_PARTNUM_CP2103) ||
		    (sc->sc_partnum == USLCOM_PARTNUM_CP2104)) {
			req.bmRequestType = USLCOM_WRITE;
			req.bRequest = USLCOM_VENDOR_SPECIFIC;
			FUNC1(req.wValue, USLCOM_WRITE_LATCH);
			FUNC1(req.wIndex, (*(int *)data));
			FUNC1(req.wLength, 0);

			if (FUNC2(sc->sc_udev, &sc->sc_ucom,
			    &req, NULL, 0, 1000)) {
				FUNC0("Set LATCH failed\n");
				error = EIO;
			}
		} else
			error = ENODEV;	/* Not yet */
		break;

	default:
		FUNC0("Unknown IOCTL\n");
		error = ENOIOCTL;
		break;
	}
	return (error);
}