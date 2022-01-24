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
struct pci_vtscsi_worker {scalar_t__ vsw_exiting; struct pci_vtscsi_queue* vsw_queue; } ;
struct pci_vtscsi_request {int /*<<< orphan*/  vsr_idx; int /*<<< orphan*/  vsr_niov_out; int /*<<< orphan*/  vsr_iov_out; int /*<<< orphan*/  vsr_niov_in; int /*<<< orphan*/  vsr_iov_in; } ;
struct pci_vtscsi_queue {int /*<<< orphan*/  vsq_mtx; int /*<<< orphan*/  vsq_qmtx; int /*<<< orphan*/  vsq_vq; int /*<<< orphan*/  vsq_requests; int /*<<< orphan*/  vsq_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct pci_vtscsi_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_vtscsi_request*) ; 
 int FUNC5 (struct pci_vtscsi_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vsr_link ; 

__attribute__((used)) static void *
FUNC11(void *arg)
{
	struct pci_vtscsi_worker *worker = (struct pci_vtscsi_worker *)arg;
	struct pci_vtscsi_queue *q = worker->vsw_queue;
	struct pci_vtscsi_request *req;
	int iolen;

	for (;;) {
		FUNC7(&q->vsq_mtx);

		while (FUNC1(&q->vsq_requests)
		    && !worker->vsw_exiting)
			FUNC6(&q->vsq_cv, &q->vsq_mtx);

		if (worker->vsw_exiting)
			break;

		req = FUNC2(&q->vsq_requests);
		FUNC3(&q->vsq_requests, vsr_link);

		FUNC8(&q->vsq_mtx);
		iolen = FUNC5(q, req->vsr_iov_in,
		    req->vsr_niov_in, req->vsr_iov_out, req->vsr_niov_out);

		FUNC7(&q->vsq_qmtx);
		FUNC10(q->vsq_vq, req->vsr_idx, iolen);
		FUNC9(q->vsq_vq, 0);
		FUNC8(&q->vsq_qmtx);

		FUNC0(("virtio-scsi: request <idx=%d> completed\n",
		    req->vsr_idx));
		FUNC4(req);
	}

	FUNC8(&q->vsq_mtx);
	return (NULL);
}