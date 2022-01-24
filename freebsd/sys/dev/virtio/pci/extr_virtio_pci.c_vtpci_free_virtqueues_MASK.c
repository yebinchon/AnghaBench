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
struct vtpci_virtqueue {int /*<<< orphan*/ * vtv_vq; } ;
struct vtpci_softc {int vtpci_nvqs; struct vtpci_virtqueue* vtpci_vqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  VIRTIO_PCI_QUEUE_PFN ; 
 int /*<<< orphan*/  FUNC0 (struct vtpci_virtqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vtpci_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vtpci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vtpci_softc *sc)
{
	struct vtpci_virtqueue *vqx;
	int idx;

	for (idx = 0; idx < sc->vtpci_nvqs; idx++) {
		vqx = &sc->vtpci_vqs[idx];

		FUNC2(sc, idx);
		FUNC3(sc, VIRTIO_PCI_QUEUE_PFN, 0);

		FUNC1(vqx->vtv_vq);
		vqx->vtv_vq = NULL;
	}

	FUNC0(sc->vtpci_vqs, M_DEVBUF);
	sc->vtpci_vqs = NULL;
	sc->vtpci_nvqs = 0;
}