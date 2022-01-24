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
struct vtnet_txq {int /*<<< orphan*/  vtntx_id; int /*<<< orphan*/  vtntx_tq; } ;
struct vtnet_softc {int vtnet_max_vq_pairs; struct vtnet_txq* vtnet_txqs; struct vtnet_rxq* vtnet_rxqs; int /*<<< orphan*/  vtnet_dev; } ;
struct vtnet_rxq {int /*<<< orphan*/  vtnrx_id; int /*<<< orphan*/  vtnrx_tq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vtnet_softc *sc)
{
	device_t dev;
	struct vtnet_rxq *rxq;
	struct vtnet_txq *txq;
	int i, error;

	dev = sc->vtnet_dev;

	/*
	 * Errors here are very difficult to recover from - we cannot
	 * easily fail because, if this is during boot, we will hang
	 * when freeing any successfully started taskqueues because
	 * the scheduler isn't up yet.
	 *
	 * Most drivers just ignore the return value - it only fails
	 * with ENOMEM so an error is not likely.
	 */
	for (i = 0; i < sc->vtnet_max_vq_pairs; i++) {
		rxq = &sc->vtnet_rxqs[i];
		error = FUNC2(&rxq->vtnrx_tq, 1, PI_NET,
		    "%s rxq %d", FUNC0(dev), rxq->vtnrx_id);
		if (error) {
			FUNC1(dev, "failed to start rx taskq %d\n",
			    rxq->vtnrx_id);
		}

		txq = &sc->vtnet_txqs[i];
		error = FUNC2(&txq->vtntx_tq, 1, PI_NET,
		    "%s txq %d", FUNC0(dev), txq->vtntx_id);
		if (error) {
			FUNC1(dev, "failed to start tx taskq %d\n",
			    txq->vtntx_id);
		}
	}
}