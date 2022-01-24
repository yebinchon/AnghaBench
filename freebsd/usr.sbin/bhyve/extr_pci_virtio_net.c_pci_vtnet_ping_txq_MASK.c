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
struct pci_vtnet_softc {scalar_t__ tx_in_progress; int /*<<< orphan*/  tx_mtx; int /*<<< orphan*/  tx_cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct vqueue_info*) ; 

__attribute__((used)) static void
FUNC5(void *vsc, struct vqueue_info *vq)
{
	struct pci_vtnet_softc *sc = vsc;

	/*
	 * Any ring entries to process?
	 */
	if (!FUNC3(vq))
		return;

	/* Signal the tx thread for processing */
	FUNC1(&sc->tx_mtx);
	FUNC4(vq);
	if (sc->tx_in_progress == 0)
		FUNC0(&sc->tx_cond);
	FUNC2(&sc->tx_mtx);
}