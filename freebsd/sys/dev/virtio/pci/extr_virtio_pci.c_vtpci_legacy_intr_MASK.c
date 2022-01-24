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
struct vtpci_virtqueue {scalar_t__ vtv_no_intr; int /*<<< orphan*/  vtv_vq; } ;
struct vtpci_softc {int vtpci_nvqs; struct vtpci_virtqueue* vtpci_vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIRTIO_PCI_ISR ; 
 int VIRTIO_PCI_ISR_CONFIG ; 
 int VIRTIO_PCI_ISR_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtpci_softc*) ; 
 int FUNC2 (struct vtpci_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *xsc)
{
	struct vtpci_softc *sc;
	struct vtpci_virtqueue *vqx;
	int i;
	uint8_t isr;

	sc = xsc;
	vqx = &sc->vtpci_vqs[0];

	/* Reading the ISR also clears it. */
	isr = FUNC2(sc, VIRTIO_PCI_ISR);

	if (isr & VIRTIO_PCI_ISR_CONFIG)
		FUNC1(sc);

	if (isr & VIRTIO_PCI_ISR_INTR) {
		for (i = 0; i < sc->vtpci_nvqs; i++, vqx++) {
			if (vqx->vtv_no_intr == 0)
				FUNC0(vqx->vtv_vq);
		}
	}
}