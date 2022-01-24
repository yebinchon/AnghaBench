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
struct vtnet_softc {int /*<<< orphan*/  vtnet_rx_nsegs; int /*<<< orphan*/  vtnet_dev; struct vtnet_rxq* vtnet_rxqs; } ;
struct vtnet_rxq {int vtnrx_id; int /*<<< orphan*/ * vtnrx_tq; int /*<<< orphan*/  vtnrx_name; int /*<<< orphan*/  vtnrx_intrtask; int /*<<< orphan*/ * vtnrx_sg; struct vtnet_softc* vtnrx_sc; int /*<<< orphan*/  vtnrx_mtx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtnet_rxq*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  vtnet_rxq_tq_intr ; 

__attribute__((used)) static int
FUNC6(struct vtnet_softc *sc, int id)
{
	struct vtnet_rxq *rxq;

	rxq = &sc->vtnet_rxqs[id];

	FUNC4(rxq->vtnrx_name, sizeof(rxq->vtnrx_name), "%s-rx%d",
	    FUNC1(sc->vtnet_dev), id);
	FUNC2(&rxq->vtnrx_mtx, rxq->vtnrx_name, NULL, MTX_DEF);

	rxq->vtnrx_sc = sc;
	rxq->vtnrx_id = id;

	rxq->vtnrx_sg = FUNC3(sc->vtnet_rx_nsegs, M_NOWAIT);
	if (rxq->vtnrx_sg == NULL)
		return (ENOMEM);

	FUNC0(&rxq->vtnrx_intrtask, 0, vtnet_rxq_tq_intr, rxq);
	rxq->vtnrx_tq = FUNC5(rxq->vtnrx_name, M_NOWAIT,
	    taskqueue_thread_enqueue, &rxq->vtnrx_tq);

	return (rxq->vtnrx_tq == NULL ? ENOMEM : 0);
}