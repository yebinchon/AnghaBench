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
struct ixl_vsi {int num_rx_queues; struct ixl_rx_queue* rx_queues; int /*<<< orphan*/  irq; TYPE_3__* shared; struct ixl_tx_queue* tx_queues; } ;
struct TYPE_5__ {int /*<<< orphan*/  me; } ;
struct ixl_tx_queue {int msix; TYPE_2__ txr; } ;
struct TYPE_4__ {int /*<<< orphan*/  me; } ;
struct ixl_rx_queue {int msix; int /*<<< orphan*/  que_irq; TYPE_1__ rxr; struct ixl_vsi vsi; } ;
struct iavf_sc {int msix; int /*<<< orphan*/  que_irq; TYPE_1__ rxr; struct ixl_vsi vsi; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int isc_nrxqsets; int isc_ntxqsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFLIB_INTR_ADMIN ; 
 int /*<<< orphan*/  IFLIB_INTR_RX ; 
 int /*<<< orphan*/  IFLIB_INTR_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  iavf_msix_adminq ; 
 int /*<<< orphan*/  iavf_msix_que ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ixl_rx_queue* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ixl_rx_queue*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ixl_tx_queue*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC9(if_ctx_t ctx, int msix)
{
	struct iavf_sc *sc = FUNC4(ctx);
	struct ixl_vsi *vsi = &sc->vsi;
	struct ixl_rx_queue *rx_que = vsi->rx_queues;
	struct ixl_tx_queue *tx_que = vsi->tx_queues;
	int err, i, rid, vector = 0;
	char buf[16];

	FUNC0(vsi->shared->isc_nrxqsets > 0);
	FUNC0(vsi->shared->isc_ntxqsets > 0);

	/* Admin Que is vector 0*/
	rid = vector + 1;
	err = FUNC5(ctx, &vsi->irq, rid, IFLIB_INTR_ADMIN,
	    iavf_msix_adminq, sc, 0, "aq");
	if (err) {
		FUNC6(ctx, &vsi->irq);
		FUNC2(FUNC3(ctx),
		    "Failed to register Admin Que handler");
		return (err);
	}

	/* Now set up the stations */
	for (i = 0, vector = 1; i < vsi->shared->isc_nrxqsets; i++, vector++, rx_que++) {
		rid = vector + 1;

		FUNC8(buf, sizeof(buf), "rxq%d", i);
		err = FUNC5(ctx, &rx_que->que_irq, rid,
		    IFLIB_INTR_RX, iavf_msix_que, rx_que, rx_que->rxr.me, buf);
		/* XXX: Does the driver work as expected if there are fewer num_rx_queues than
		 * what's expected in the iflib context? */
		if (err) {
			FUNC2(FUNC3(ctx),
			    "Failed to allocate queue RX int vector %d, err: %d\n", i, err);
			vsi->num_rx_queues = i + 1;
			goto fail;
		}
		rx_que->msix = vector;
	}

	FUNC1(buf, sizeof(buf));

	for (i = 0; i < vsi->shared->isc_ntxqsets; i++, tx_que++) {
		FUNC8(buf, sizeof(buf), "txq%d", i);
		FUNC7(ctx,
		    &vsi->rx_queues[i % vsi->shared->isc_nrxqsets].que_irq,
		    IFLIB_INTR_TX, tx_que, tx_que->txr.me, buf);

		/* TODO: Maybe call a strategy function for this to figure out which
		* interrupts to map Tx queues to. I don't know if there's an immediately
		* better way than this other than a user-supplied map, though. */
		tx_que->msix = (i % vsi->shared->isc_nrxqsets) + 1;
	}

	return (0);
fail:
	FUNC6(ctx, &vsi->irq);
	rx_que = vsi->rx_queues;
	for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++)
		FUNC6(ctx, &rx_que->que_irq);
	return (err);
}