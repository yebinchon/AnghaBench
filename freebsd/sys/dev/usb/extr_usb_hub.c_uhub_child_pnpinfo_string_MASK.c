#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {char* pnpinfo; TYPE_4__* idesc; } ;
struct usb_hub {int dummy; } ;
struct uhub_softc {TYPE_1__* sc_udev; } ;
struct hub_result {TYPE_5__* udev; int /*<<< orphan*/  iface_index; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_9__ {scalar_t__ usb_mode; } ;
struct TYPE_8__ {int bDeviceClass; int bDeviceSubClass; int bDeviceProtocol; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_11__ {TYPE_3__ flags; TYPE_2__ ddesc; } ;
struct TYPE_10__ {int bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; } ;
struct TYPE_7__ {struct usb_hub* hub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  Giant ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ USB_MODE_HOST ; 
 struct uhub_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,char*,int,int,int,int,int,char*,int,char*,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hub*,int /*<<< orphan*/ ,struct hub_result*) ; 
 char* FUNC8 (TYPE_5__*) ; 
 struct usb_interface* FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t parent, device_t child,
    char *buf, size_t buflen)
{
	struct uhub_softc *sc;
	struct usb_hub *hub;
	struct usb_interface *iface;
	struct hub_result res;

	if (!FUNC3(parent)) {
		if (buflen)
			buf[0] = 0;
		return (0);
	}

	sc = FUNC2(parent);
	hub = sc->sc_udev->hub;

	FUNC4(&Giant);
	FUNC7(hub, child, &res);
	if (!res.udev) {
		FUNC0("device not on hub\n");
		if (buflen) {
			buf[0] = '\0';
		}
		goto done;
	}
	iface = FUNC9(res.udev, res.iface_index);
	if (iface && iface->idesc) {
		FUNC6(buf, buflen, "vendor=0x%04x product=0x%04x "
		    "devclass=0x%02x devsubclass=0x%02x "
		    "devproto=0x%02x "
		    "sernum=\"%s\" "
		    "release=0x%04x "
		    "mode=%s "
		    "intclass=0x%02x intsubclass=0x%02x "
		    "intprotocol=0x%02x" "%s%s",
		    FUNC1(res.udev->ddesc.idVendor),
		    FUNC1(res.udev->ddesc.idProduct),
		    res.udev->ddesc.bDeviceClass,
		    res.udev->ddesc.bDeviceSubClass,
		    res.udev->ddesc.bDeviceProtocol,
		    FUNC8(res.udev),
		    FUNC1(res.udev->ddesc.bcdDevice),
		    (res.udev->flags.usb_mode == USB_MODE_HOST) ? "host" : "device",
		    iface->idesc->bInterfaceClass,
		    iface->idesc->bInterfaceSubClass,
		    iface->idesc->bInterfaceProtocol,
		    iface->pnpinfo ? " " : "",
		    iface->pnpinfo ? iface->pnpinfo : "");
	} else {
		if (buflen) {
			buf[0] = '\0';
		}
		goto done;
	}
done:
	FUNC5(&Giant);

	return (0);
}