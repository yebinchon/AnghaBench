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
typedef  scalar_t__ uint16_t ;
struct vtpci_softc {int /*<<< orphan*/  vtpci_dev; } ;
struct vtpci_interrupt {scalar_t__ vti_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ VIRTIO_MSI_NO_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct vtpci_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(struct vtpci_softc *sc, int offset,
    struct vtpci_interrupt *intr)
{
	device_t dev;
	uint16_t vector;

	dev = sc->vtpci_dev;

	if (intr != NULL) {
		/* Map from guest rid to host vector. */
		vector = intr->vti_rid - 1;
	} else
		vector = VIRTIO_MSI_NO_VECTOR;

	FUNC2(sc, offset, vector);

	/* Read vector to determine if the host had sufficient resources. */
	if (FUNC1(sc, offset) != vector) {
		FUNC0(dev,
		    "insufficient host resources for MSIX interrupts\n");
		return (ENODEV);
	}

	return (0);
}