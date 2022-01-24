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
struct virtio_net_rxhdr {int dummy; } ;
struct pci_vtnet_softc {int resetting; int rx_merge; int rx_vhdrlen; int /*<<< orphan*/  rx_mtx; int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/  vsc_vs; scalar_t__ tx_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *vsc)
{
	struct pci_vtnet_softc *sc = vsc;

	FUNC0(("vtnet: device reset requested !\n"));

	/* Acquire the RX lock to block RX processing. */
	FUNC1(&sc->rx_mtx);

	/* Set sc->resetting and give a chance to the TX thread to stop. */
	FUNC1(&sc->tx_mtx);
	sc->resetting = 1;
	while (sc->tx_in_progress) {
		FUNC2(&sc->tx_mtx);
		FUNC3(10000);
		FUNC1(&sc->tx_mtx);
	}

	sc->rx_merge = 1;
	sc->rx_vhdrlen = sizeof(struct virtio_net_rxhdr);

	/*
	 * Now reset rings, MSI-X vectors, and negotiated capabilities.
	 * Do that with the TX lock held, since we need to reset
	 * sc->resetting.
	 */
	FUNC4(&sc->vsc_vs);

	sc->resetting = 0;
	FUNC2(&sc->tx_mtx);
	FUNC2(&sc->rx_mtx);
}