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
typedef  int /*<<< orphan*/  tname ;
struct pci_vtscsi_worker {int /*<<< orphan*/  vsw_thread; struct pci_vtscsi_queue* vsw_queue; } ;
struct pci_vtscsi_softc {int /*<<< orphan*/ * vss_vq; } ;
struct pci_vtscsi_queue {int /*<<< orphan*/  vsq_workers; int /*<<< orphan*/  vsq_requests; int /*<<< orphan*/  vsq_cv; int /*<<< orphan*/  vsq_qmtx; int /*<<< orphan*/  vsq_mtx; int /*<<< orphan*/ * vsq_vq; struct pci_vtscsi_softc* vsq_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pci_vtscsi_worker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAXCOMLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VTSCSI_THR_PER_Q ; 
 struct pci_vtscsi_worker* FUNC3 (int,int) ; 
 int /*<<< orphan*/  pci_vtscsi_proc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  vsw_link ; 

__attribute__((used)) static int
FUNC9(struct pci_vtscsi_softc *sc, 
    struct pci_vtscsi_queue *queue, int num)
{
	struct pci_vtscsi_worker *worker;
	char tname[MAXCOMLEN + 1];
	int i;

	queue->vsq_sc = sc;
	queue->vsq_vq = &sc->vss_vq[num + 2];

	FUNC6(&queue->vsq_mtx, NULL);
	FUNC6(&queue->vsq_qmtx, NULL);
	FUNC4(&queue->vsq_cv, NULL);
	FUNC2(&queue->vsq_requests);
	FUNC0(&queue->vsq_workers);

	for (i = 0; i < VTSCSI_THR_PER_Q; i++) {
		worker = FUNC3(1, sizeof(struct pci_vtscsi_worker));
		worker->vsw_queue = queue;

		FUNC5(&worker->vsw_thread, NULL, &pci_vtscsi_proc,
		    (void *)worker);

		FUNC8(tname, sizeof(tname), "vtscsi:%d-%d", num, i);
		FUNC7(worker->vsw_thread, tname);
		FUNC1(&queue->vsq_workers, worker, vsw_link);
	}

	return (0);
}