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
struct ipw_softc {int /*<<< orphan*/ * rxbuf_dmat; struct ipw_soft_buf* rx_sbuf_list; int /*<<< orphan*/ * txbuf_dmat; TYPE_2__* tx_sbuf_list; int /*<<< orphan*/ * hdr_dmat; TYPE_1__* shdr_list; int /*<<< orphan*/ * cmd_dmat; int /*<<< orphan*/  cmd_map; int /*<<< orphan*/ * stbd_list; int /*<<< orphan*/ * status_dmat; int /*<<< orphan*/  status_map; int /*<<< orphan*/ * status_list; int /*<<< orphan*/ * rbd_dmat; int /*<<< orphan*/  rbd_map; int /*<<< orphan*/ * rbd_list; int /*<<< orphan*/ * tbd_dmat; int /*<<< orphan*/  tbd_map; int /*<<< orphan*/ * tbd_list; int /*<<< orphan*/ * parent_dmat; } ;
struct ipw_soft_buf {int /*<<< orphan*/  map; int /*<<< orphan*/ * m; } ;
struct TYPE_4__ {int /*<<< orphan*/  map; } ;
struct TYPE_3__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int IPW_NDATA ; 
 int IPW_NRBD ; 
 int IPW_NTBD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct ipw_softc *sc)
{
	struct ipw_soft_buf *sbuf;
	int i;

	if (sc->parent_dmat != NULL) {
		FUNC0(sc->parent_dmat);
	}

	if (sc->tbd_dmat != NULL) {
		FUNC3(sc->tbd_dmat, sc->tbd_map);
		FUNC4(sc->tbd_dmat, sc->tbd_list, sc->tbd_map);
		FUNC0(sc->tbd_dmat);
	}

	if (sc->rbd_dmat != NULL) {
		if (sc->rbd_list != NULL) {
			FUNC3(sc->rbd_dmat, sc->rbd_map);
			FUNC4(sc->rbd_dmat, sc->rbd_list,
			    sc->rbd_map);
		}
		FUNC0(sc->rbd_dmat);
	}

	if (sc->status_dmat != NULL) {
		if (sc->status_list != NULL) {
			FUNC3(sc->status_dmat, sc->status_map);
			FUNC4(sc->status_dmat, sc->status_list,
			    sc->status_map);
		}
		FUNC0(sc->status_dmat);
	}

	for (i = 0; i < IPW_NTBD; i++)
		FUNC5(sc, &sc->stbd_list[i]);

	if (sc->cmd_dmat != NULL) {
		FUNC1(sc->cmd_dmat, sc->cmd_map);
		FUNC0(sc->cmd_dmat);
	}

	if (sc->hdr_dmat != NULL) {
		for (i = 0; i < IPW_NDATA; i++)
			FUNC1(sc->hdr_dmat, sc->shdr_list[i].map);
		FUNC0(sc->hdr_dmat);
	}

	if (sc->txbuf_dmat != NULL) {
		for (i = 0; i < IPW_NDATA; i++) {
			FUNC1(sc->txbuf_dmat,
			    sc->tx_sbuf_list[i].map);
		}
		FUNC0(sc->txbuf_dmat);
	}

	if (sc->rxbuf_dmat != NULL) {
		for (i = 0; i < IPW_NRBD; i++) {
			sbuf = &sc->rx_sbuf_list[i];
			if (sbuf->m != NULL) {
				FUNC2(sc->rxbuf_dmat, sbuf->map,
				    BUS_DMASYNC_POSTREAD);
				FUNC3(sc->rxbuf_dmat, sbuf->map);
				FUNC6(sbuf->m);
			}
			FUNC1(sc->rxbuf_dmat, sbuf->map);
		}
		FUNC0(sc->rxbuf_dmat);
	}
}