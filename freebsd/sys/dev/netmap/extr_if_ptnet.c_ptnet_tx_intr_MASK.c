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
struct ptnet_softc {int /*<<< orphan*/  ifp; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  intrs; } ;
struct ptnet_queue {int /*<<< orphan*/  task; int /*<<< orphan*/  taskq; int /*<<< orphan*/  kring_id; TYPE_1__ stats; struct ptnet_softc* sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NM_IRQ_PASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *opaque)
{
	struct ptnet_queue *pq = opaque;
	struct ptnet_softc *sc = pq->sc;

	FUNC0(FUNC1(sc->dev, "Tx interrupt #%d\n", pq->kring_id));
#ifdef PTNETMAP_STATS
	pq->stats.intrs ++;
#endif /* PTNETMAP_STATS */

	if (FUNC2(sc->ifp, pq->kring_id) != NM_IRQ_PASS) {
		return;
	}

	/* Schedule the tasqueue to flush process transmissions requests.
	 * However, vtnet, if_em and if_igb just call ptnet_transmit() here,
	 * at least when using MSI-X interrupts. The if_em driver, instead
	 * schedule taskqueue when using legacy interrupts. */
	FUNC3(pq->taskq, &pq->task);
}