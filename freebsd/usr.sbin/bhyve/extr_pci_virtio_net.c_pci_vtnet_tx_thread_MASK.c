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
struct vqueue_info {int dummy; } ;
struct pci_vtnet_softc {int tx_in_progress; int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/  tx_cond; scalar_t__ resetting; struct vqueue_info* vsc_queues; } ;

/* Variables and functions */
 size_t VTNET_TXQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_vtnet_softc*,struct vqueue_info*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vqueue_info*,int) ; 
 scalar_t__ FUNC6 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct vqueue_info*) ; 

__attribute__((used)) static void *
FUNC9(void *param)
{
	struct pci_vtnet_softc *sc = param;
	struct vqueue_info *vq;
	int error;

	vq = &sc->vsc_queues[VTNET_TXQ];

	/*
	 * Let us wait till the tx queue pointers get initialised &
	 * first tx signaled
	 */
	FUNC3(&sc->tx_mtx);
	error = FUNC2(&sc->tx_cond, &sc->tx_mtx);
	FUNC0(error == 0);

	for (;;) {
		/* note - tx mutex is locked here */
		while (sc->resetting || !FUNC6(vq)) {
			FUNC8(vq);
			if (!sc->resetting && FUNC6(vq))
				break;

			sc->tx_in_progress = 0;
			error = FUNC2(&sc->tx_cond, &sc->tx_mtx);
			FUNC0(error == 0);
		}
		FUNC7(vq);
		sc->tx_in_progress = 1;
		FUNC4(&sc->tx_mtx);

		do {
			/*
			 * Run through entries, placing them into
			 * iovecs and sending when an end-of-packet
			 * is found
			 */
			FUNC1(sc, vq);
		} while (FUNC6(vq));

		/*
		 * Generate an interrupt if needed.
		 */
		FUNC5(vq, /*used_all_avail=*/1);

		FUNC3(&sc->tx_mtx);
	}
}