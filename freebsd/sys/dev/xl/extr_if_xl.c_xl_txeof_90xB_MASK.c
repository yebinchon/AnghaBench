#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int xl_tx_cons; int xl_tx_prod; scalar_t__ xl_tx_cnt; struct xl_chain* xl_tx_chain; } ;
struct TYPE_4__ {int /*<<< orphan*/  xl_tx_dmamap; int /*<<< orphan*/  xl_tx_tag; } ;
struct xl_softc {TYPE_3__ xl_cdata; scalar_t__ xl_wdog_timer; int /*<<< orphan*/  xl_mtag; TYPE_1__ xl_ldata; struct ifnet* xl_ifp; } ;
struct xl_chain {int /*<<< orphan*/ * xl_mbuf; int /*<<< orphan*/  xl_map; TYPE_2__* xl_ptr; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  xl_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*) ; 
 int XL_TXSTAT_DL_COMPLETE ; 
 int /*<<< orphan*/  XL_TX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct xl_softc *sc)
{
	struct xl_chain		*cur_tx = NULL;
	struct ifnet		*ifp = sc->xl_ifp;
	int			idx;

	FUNC1(sc);

	FUNC2(sc->xl_ldata.xl_tx_tag, sc->xl_ldata.xl_tx_dmamap,
	    BUS_DMASYNC_POSTREAD);
	idx = sc->xl_cdata.xl_tx_cons;
	while (idx != sc->xl_cdata.xl_tx_prod) {
		cur_tx = &sc->xl_cdata.xl_tx_chain[idx];

		if (!(FUNC5(cur_tx->xl_ptr->xl_status) &
		      XL_TXSTAT_DL_COMPLETE))
			break;

		if (cur_tx->xl_mbuf != NULL) {
			FUNC2(sc->xl_mtag, cur_tx->xl_map,
			    BUS_DMASYNC_POSTWRITE);
			FUNC3(sc->xl_mtag, cur_tx->xl_map);
			FUNC6(cur_tx->xl_mbuf);
			cur_tx->xl_mbuf = NULL;
		}

		FUNC4(ifp, IFCOUNTER_OPACKETS, 1);

		sc->xl_cdata.xl_tx_cnt--;
		FUNC0(idx, XL_TX_LIST_CNT);
	}

	if (sc->xl_cdata.xl_tx_cnt == 0)
		sc->xl_wdog_timer = 0;
	sc->xl_cdata.xl_tx_cons = idx;

	if (cur_tx != NULL)
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}