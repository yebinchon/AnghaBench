#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_hub {int nports; } ;
struct TYPE_4__ {TYPE_1__* sc_udev; } ;
struct acpi_uhub_softc {int nports; int /*<<< orphan*/  ah; int /*<<< orphan*/  port; TYPE_2__ usc; } ;
struct acpi_uhub_port {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {struct usb_hub* hub; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_uhub_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct usb_hub *uh;
	struct acpi_uhub_softc *sc = FUNC2(dev);
	ACPI_STATUS status;
	int ret = ENXIO;

	uh = sc->usc.sc_udev->hub;
	sc->nports = uh->nports;
	sc->port = FUNC3(sizeof(struct acpi_uhub_port) * uh->nports,
	    M_USBDEV, M_WAITOK | M_ZERO);
	status = FUNC1(dev, sc->ah);

	if (FUNC0(status)){
		ret = 0;
	} 

	return (ret);
}