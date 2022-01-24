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
struct ptnet_softc {int num_rings; int /*<<< orphan*/ * msix_mem; struct ptnet_queue* queues; int /*<<< orphan*/  dev; } ;
struct ptnet_queue {int /*<<< orphan*/ * irq; int /*<<< orphan*/ * cookie; int /*<<< orphan*/ * taskq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTNETMAP_MSIX_PCI_BAR ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ptnet_softc *sc)
{
	device_t dev = sc->dev;
	int i;

	for (i = 0; i < sc->num_rings; i++) {
		struct ptnet_queue *pq = sc->queues + i;

		if (pq->taskq) {
			FUNC4(pq->taskq);
			pq->taskq = NULL;
		}

		if (pq->cookie) {
			FUNC2(dev, pq->irq, pq->cookie);
			pq->cookie = NULL;
		}

		if (pq->irq) {
			FUNC1(dev, SYS_RES_IRQ, i + 1, pq->irq);
			pq->irq = NULL;
		}
	}

	if (sc->msix_mem) {
		FUNC3(dev);

		FUNC1(dev, SYS_RES_MEMORY,
				     FUNC0(PTNETMAP_MSIX_PCI_BAR),
				     sc->msix_mem);
		sc->msix_mem = NULL;
	}
}