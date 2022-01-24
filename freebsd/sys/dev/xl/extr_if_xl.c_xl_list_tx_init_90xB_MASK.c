#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xl_list_data {int /*<<< orphan*/  xl_tx_dmamap; int /*<<< orphan*/  xl_tx_tag; TYPE_2__* xl_tx_list; scalar_t__ xl_tx_dmaaddr; } ;
struct xl_chain_data {int xl_tx_prod; int xl_tx_cons; scalar_t__ xl_tx_cnt; TYPE_1__* xl_tx_chain; } ;
struct xl_softc {int /*<<< orphan*/  xl_mtag; struct xl_list_data xl_ldata; struct xl_chain_data xl_cdata; } ;
struct xl_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xl_status; } ;
struct TYPE_3__ {struct TYPE_3__* xl_prev; struct TYPE_3__* xl_next; scalar_t__ xl_phys; int /*<<< orphan*/  xl_map; TYPE_2__* xl_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct xl_softc*) ; 
 int /*<<< orphan*/  XL_TXSTAT_EMPTY ; 
 int XL_TX_LIST_CNT ; 
 int /*<<< orphan*/  XL_TX_LIST_SZ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct xl_softc *sc)
{
	struct xl_chain_data	*cd;
	struct xl_list_data	*ld;
	int			error, i;

	FUNC0(sc);

	cd = &sc->xl_cdata;
	ld = &sc->xl_ldata;
	for (i = 0; i < XL_TX_LIST_CNT; i++) {
		cd->xl_tx_chain[i].xl_ptr = &ld->xl_tx_list[i];
		error = FUNC1(sc->xl_mtag, 0,
		    &cd->xl_tx_chain[i].xl_map);
		if (error)
			return (error);
		cd->xl_tx_chain[i].xl_phys = ld->xl_tx_dmaaddr +
		    i * sizeof(struct xl_list);
		if (i == (XL_TX_LIST_CNT - 1))
			cd->xl_tx_chain[i].xl_next = &cd->xl_tx_chain[0];
		else
			cd->xl_tx_chain[i].xl_next = &cd->xl_tx_chain[i + 1];
		if (i == 0)
			cd->xl_tx_chain[i].xl_prev =
			    &cd->xl_tx_chain[XL_TX_LIST_CNT - 1];
		else
			cd->xl_tx_chain[i].xl_prev =
			    &cd->xl_tx_chain[i - 1];
	}

	FUNC3(ld->xl_tx_list, XL_TX_LIST_SZ);
	ld->xl_tx_list[0].xl_status = FUNC4(XL_TXSTAT_EMPTY);

	cd->xl_tx_prod = 1;
	cd->xl_tx_cons = 1;
	cd->xl_tx_cnt = 0;

	FUNC2(ld->xl_tx_tag, ld->xl_tx_dmamap, BUS_DMASYNC_PREWRITE);
	return (0);
}