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
struct vtpci_softc {int /*<<< orphan*/ * vtpci_child_dev; int /*<<< orphan*/  vtpci_flags; int /*<<< orphan*/ * vtpci_msix_res; int /*<<< orphan*/ * vtpci_res; int /*<<< orphan*/ * vtpci_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCIY_MSI ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_ACK ; 
 int /*<<< orphan*/  VIRTIO_CONFIG_STATUS_FAILED ; 
 int /*<<< orphan*/  VTPCI_FLAG_NO_MSI ; 
 int /*<<< orphan*/  VTPCI_FLAG_NO_MSIX ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct vtpci_softc* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct vtpci_softc *sc;
	device_t child;
	int rid;

	sc = FUNC3(dev);
	sc->vtpci_dev = dev;

	FUNC5(dev);

	rid = FUNC0(0);
	sc->vtpci_res = FUNC1(dev, SYS_RES_IOPORT, &rid,
	    RF_ACTIVE);
	if (sc->vtpci_res == NULL) {
		FUNC4(dev, "cannot map I/O space\n");
		return (ENXIO);
	}

	if (FUNC6(dev, PCIY_MSI, NULL) != 0)
		sc->vtpci_flags |= VTPCI_FLAG_NO_MSI;

	if (FUNC6(dev, PCIY_MSIX, NULL) == 0) {
		rid = FUNC0(1);
		sc->vtpci_msix_res = FUNC1(dev,
		    SYS_RES_MEMORY, &rid, RF_ACTIVE);
	}

	if (sc->vtpci_msix_res == NULL)
		sc->vtpci_flags |= VTPCI_FLAG_NO_MSIX;

	FUNC9(sc);

	/* Tell the host we've noticed this device. */
	FUNC10(dev, VIRTIO_CONFIG_STATUS_ACK);

	if ((child = FUNC2(dev, NULL, -1)) == NULL) {
		FUNC4(dev, "cannot create child device\n");
		FUNC10(dev, VIRTIO_CONFIG_STATUS_FAILED);
		FUNC7(dev);
		return (ENOMEM);
	}

	sc->vtpci_child_dev = child;
	FUNC8(sc);

	return (0);
}