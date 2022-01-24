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
typedef  int /*<<< orphan*/  usbmprops ;
struct imx_ehci_softc {int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  USBNC_OVER_CUR_DIS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct imx_ehci_softc *sc)
{
	device_t usbmdev;
	pcell_t usbmprops[2];
	phandle_t node;
	ssize_t size;
	int index;

	/* Get the reference to the usbmisc driver from the fdt data */
	node = FUNC4(sc->dev);
	size = FUNC1(node, "fsl,usbmisc", usbmprops,
	    sizeof(usbmprops));
	if (size < sizeof(usbmprops)) {
		FUNC2(sc->dev, "failed to retrieve fsl,usbmisc "
		   "property, cannot disable overcurrent protection");
		return;
	}
	/* Retrieve the device_t via the xref handle. */
	usbmdev = FUNC0(usbmprops[0]);
	if (usbmdev == NULL) {
		FUNC2(sc->dev, "usbmisc device not found, "
		    "cannot disable overcurrent protection");
		return;
	}
	/* Call the device routine to set the overcurrent disable bit. */
	index = usbmprops[1];
	FUNC3(usbmdev, index, USBNC_OVER_CUR_DIS);
}