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
typedef  size_t uint16_t ;
struct vqueue_info {int vq_num; } ;
struct pci_vtscsi_softc {struct pci_vtscsi_queue* vss_queues; } ;
struct pci_vtscsi_request {size_t vsr_idx; int vsr_niov_in; size_t vsr_niov_out; int /*<<< orphan*/  vsr_iov_out; int /*<<< orphan*/  vsr_iov_in; struct pci_vtscsi_queue* vsr_queue; } ;
struct pci_vtscsi_queue {int /*<<< orphan*/  vsq_mtx; int /*<<< orphan*/  vsq_cv; int /*<<< orphan*/  vsq_requests; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pci_vtscsi_request*,int /*<<< orphan*/ ) ; 
 size_t VRING_DESC_F_WRITE ; 
 int VTSCSI_MAXSEG ; 
 struct pci_vtscsi_request* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct vqueue_info*,size_t*,struct iovec*,int,size_t*) ; 
 scalar_t__ FUNC8 (struct vqueue_info*) ; 
 int /*<<< orphan*/  vsr_link ; 

__attribute__((used)) static void
FUNC9(void *vsc, struct vqueue_info *vq)
{
	struct pci_vtscsi_softc *sc;
	struct pci_vtscsi_queue *q;
	struct pci_vtscsi_request *req;
	struct iovec iov[VTSCSI_MAXSEG];
	uint16_t flags[VTSCSI_MAXSEG];
	uint16_t idx, n, i;
	int readable;

	sc = vsc;
	q = &sc->vss_queues[vq->vq_num - 2];

	while (FUNC8(vq)) {
		readable = 0;
		n = FUNC7(vq, &idx, iov, VTSCSI_MAXSEG, flags);

		/* Count readable descriptors */
		for (i = 0; i < n; i++) {
			if (flags[i] & VRING_DESC_F_WRITE)
				break;

			readable++;
		}

		req = FUNC2(1, sizeof(struct pci_vtscsi_request));
		req->vsr_idx = idx;
		req->vsr_queue = q;
		req->vsr_niov_in = readable;
		req->vsr_niov_out = n - readable;
		FUNC3(req->vsr_iov_in, iov,
		    req->vsr_niov_in * sizeof(struct iovec));
		FUNC3(req->vsr_iov_out, iov + readable,
		    req->vsr_niov_out * sizeof(struct iovec));

		FUNC5(&q->vsq_mtx);
		FUNC1(&q->vsq_requests, req, vsr_link);
		FUNC4(&q->vsq_cv);
		FUNC6(&q->vsq_mtx);

		FUNC0(("virtio-scsi: request <idx=%d> enqueued\n", idx));
	}
}