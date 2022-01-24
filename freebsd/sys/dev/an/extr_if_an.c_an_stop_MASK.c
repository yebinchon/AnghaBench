#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/ * an_tx_fids; } ;
struct an_softc {int /*<<< orphan*/ * an_flash_buffer; int /*<<< orphan*/  an_stat_ch; TYPE_1__ an_rdata; int /*<<< orphan*/  mpi350; struct ifnet* an_ifp; scalar_t__ an_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_CMD_DEALLOC_MEM ; 
 int /*<<< orphan*/  AN_CMD_DISABLE ; 
 int /*<<< orphan*/  AN_CMD_FORCE_SYNCLOSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int AN_TX_RING_CNT ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(struct an_softc *sc)
{
	struct ifnet		*ifp;
	int			i;

	FUNC1(sc);

	if (sc->an_gone)
		return;

	ifp = sc->an_ifp;

	FUNC3(sc, AN_CMD_FORCE_SYNCLOSS, 0);
	FUNC2(sc, FUNC0(sc->mpi350), 0);
	FUNC3(sc, AN_CMD_DISABLE, 0);

	for (i = 0; i < AN_TX_RING_CNT; i++)
		FUNC3(sc, AN_CMD_DEALLOC_MEM, sc->an_rdata.an_tx_fids[i]);

	FUNC4(&sc->an_stat_ch);

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING|IFF_DRV_OACTIVE);

	if (sc->an_flash_buffer) {
		FUNC5(sc->an_flash_buffer, M_DEVBUF);
		sc->an_flash_buffer = NULL;
	}
}