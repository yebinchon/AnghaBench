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
struct vtpci_softc {int vtpci_flags; int vtpci_nvqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_MSI_CONFIG_VECTOR ; 
 int /*<<< orphan*/  VIRTIO_MSI_NO_VECTOR ; 
 int /*<<< orphan*/  VIRTIO_MSI_QUEUE_VECTOR ; 
 int VTPCI_FLAG_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct vtpci_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtpci_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vtpci_softc *sc)
{
	int idx;

	if (sc->vtpci_flags & VTPCI_FLAG_MSIX) {
		FUNC2(sc, VIRTIO_MSI_CONFIG_VECTOR,
		    VIRTIO_MSI_NO_VECTOR);

		for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
			FUNC1(sc, idx);
			FUNC2(sc, VIRTIO_MSI_QUEUE_VECTOR,
			    VIRTIO_MSI_NO_VECTOR);
		}
	}

	FUNC0(sc);
}