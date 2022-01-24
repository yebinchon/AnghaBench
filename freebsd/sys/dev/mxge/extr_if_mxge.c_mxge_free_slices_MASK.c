#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * entry; int /*<<< orphan*/  dma; } ;
struct TYPE_5__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * br; } ;
struct mxge_slice_state {TYPE_2__ rx_done; TYPE_1__ tx; int /*<<< orphan*/ * fw_stats; int /*<<< orphan*/  fw_stats_dma; } ;
struct TYPE_7__ {int num_slices; struct mxge_slice_state* ss; } ;
typedef  TYPE_3__ mxge_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mxge_slice_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(mxge_softc_t *sc)
{
	struct mxge_slice_state *ss;
	int i;


	if (sc->ss == NULL)
		return;

	for (i = 0; i < sc->num_slices; i++) {
		ss = &sc->ss[i];
		if (ss->fw_stats != NULL) {
			FUNC3(&ss->fw_stats_dma);
			ss->fw_stats = NULL;
#ifdef IFNET_BUF_RING
			if (ss->tx.br != NULL) {
				drbr_free(ss->tx.br, M_DEVBUF);
				ss->tx.br = NULL;
			}
#endif
			FUNC2(&ss->tx.mtx);
		}
		if (ss->rx_done.entry != NULL) {
			FUNC3(&ss->rx_done.dma);
			ss->rx_done.entry = NULL;
		}
	}
	FUNC1(sc->ss, M_DEVBUF);
	sc->ss = NULL;
}