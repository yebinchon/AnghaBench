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
struct ptnet_softc {int num_rings; int num_tx_rings; int /*<<< orphan*/  dev; struct ptnet_queue* queues; int /*<<< orphan*/ * msix_mem; } ;
struct ptnet_queue {int /*<<< orphan*/  taskq; int /*<<< orphan*/  task; int /*<<< orphan*/ * irq; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int ENOSPC ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  PTNETMAP_MSIX_PCI_BAR ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*,int),struct ptnet_queue*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void (*) (void*),struct ptnet_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ptnet_softc*) ; 
 void FUNC14 (void*) ; 
 void FUNC15 (void*,int) ; 
 void FUNC16 (void*) ; 
 void FUNC17 (void*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC20(struct ptnet_softc *sc)
{
	int rid = FUNC2(PTNETMAP_MSIX_PCI_BAR);
	int nvecs = sc->num_rings;
	device_t dev = sc->dev;
	int err = ENOSPC;
	int cpu_cur;
	int i;

	if (FUNC11(dev, PCIY_MSIX, NULL) != 0)  {
		FUNC9(dev, "Could not find MSI-X capability\n");
		return (ENXIO);
	}

	sc->msix_mem = FUNC4(dev, SYS_RES_MEMORY,
					      &rid, RF_ACTIVE);
	if (sc->msix_mem == NULL) {
		FUNC9(dev, "Failed to allocate MSIX PCI BAR\n");
		return (ENXIO);
	}

	if (FUNC12(dev) < nvecs) {
		FUNC9(dev, "Not enough MSI-X vectors\n");
		goto err_path;
	}

	err = FUNC10(dev, &nvecs);
	if (err) {
		FUNC9(dev, "Failed to allocate MSI-X vectors\n");
		goto err_path;
	}

	for (i = 0; i < nvecs; i++) {
		struct ptnet_queue *pq = sc->queues + i;

		rid = i + 1;
		pq->irq = FUNC4(dev, SYS_RES_IRQ, &rid,
						 RF_ACTIVE);
		if (pq->irq == NULL) {
			FUNC9(dev, "Failed to allocate interrupt "
					   "for queue #%d\n", i);
			err = ENOSPC;
			goto err_path;
		}
	}

	cpu_cur = FUNC0();
	for (i = 0; i < nvecs; i++) {
		struct ptnet_queue *pq = sc->queues + i;
		void (*handler)(void *) = ptnet_tx_intr;

		if (i >= sc->num_tx_rings) {
			handler = ptnet_rx_intr;
		}
		err = FUNC7(dev, pq->irq, INTR_TYPE_NET | INTR_MPSAFE,
				     NULL /* intr_filter */, handler,
				     pq, &pq->cookie);
		if (err) {
			FUNC9(dev, "Failed to register intr handler "
					   "for queue #%d\n", i);
			goto err_path;
		}

		FUNC6(dev, pq->irq, pq->cookie, "q%d", i);
#if 0
		bus_bind_intr(sc->dev, pq->irq, cpu_cur);
#endif
		cpu_cur = FUNC1(cpu_cur);
	}

	FUNC9(dev, "Allocated %d MSI-X vectors\n", nvecs);

	cpu_cur = FUNC0();
	for (i = 0; i < nvecs; i++) {
		struct ptnet_queue *pq = sc->queues + i;
		static void (*handler)(void *context, int pending);

		handler = (i < sc->num_tx_rings) ? ptnet_tx_task : ptnet_rx_task;

		FUNC3(&pq->task, 0, handler, pq);
		pq->taskq = FUNC18("ptnet_queue", M_NOWAIT,
					taskqueue_thread_enqueue, &pq->taskq);
		FUNC19(&pq->taskq, 1, PI_NET, "%s-pq-%d",
					FUNC8(sc->dev), cpu_cur);
		cpu_cur = FUNC1(cpu_cur);
	}

	return 0;
err_path:
	FUNC13(sc);
	return err;
}