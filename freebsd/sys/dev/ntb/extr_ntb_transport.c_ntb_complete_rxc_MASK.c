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
struct ntb_transport_qp {int /*<<< orphan*/  ntb_rx_q_lock; int /*<<< orphan*/  cb_data; int /*<<< orphan*/  (* rx_handler ) (struct ntb_transport_qp*,int /*<<< orphan*/ ,struct mbuf*,unsigned int) ;scalar_t__ client_ready; int /*<<< orphan*/  rx_pend_q; int /*<<< orphan*/  rx_post_q; TYPE_2__* rx_info; } ;
struct ntb_queue_entry {int flags; unsigned int len; int /*<<< orphan*/  cb_data; struct mbuf* buf; int /*<<< orphan*/  index; TYPE_1__* x_hdr; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  entry; } ;
struct TYPE_3__ {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct ntb_queue_entry*,struct mbuf*) ; 
 int /*<<< orphan*/  KTR_NTB ; 
 int NTBT_DESC_DONE_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ntb_queue_entry* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ntb_queue_entry*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ntb_transport_qp*,int /*<<< orphan*/ ,struct mbuf*,unsigned int) ; 
 unsigned int transport_mtu ; 

__attribute__((used)) static void
FUNC11(struct ntb_transport_qp *qp)
{
	struct ntb_queue_entry *entry;
	struct mbuf *m;
	unsigned len;

	FUNC0(KTR_NTB, "RX: rx_completion_task");

	FUNC8(&qp->ntb_rx_q_lock);

	while (!FUNC2(&qp->rx_post_q)) {
		entry = FUNC3(&qp->rx_post_q);
		if ((entry->flags & NTBT_DESC_DONE_FLAG) == 0)
			break;

		entry->x_hdr->flags = 0;
		FUNC6(entry->index, &qp->rx_info->entry);

		FUNC5(&qp->rx_post_q, entry);

		len = entry->len;
		m = entry->buf;

		/*
		 * Re-initialize queue_entry for reuse; rx_handler takes
		 * ownership of the mbuf.
		 */
		entry->buf = NULL;
		entry->len = transport_mtu;
		entry->cb_data = qp->cb_data;

		FUNC4(&qp->rx_pend_q, entry, entry);

		FUNC9(&qp->ntb_rx_q_lock);

		FUNC1(KTR_NTB, "RX: completing entry %p, mbuf %p", entry, m);
		if (qp->rx_handler != NULL && qp->client_ready)
			qp->rx_handler(qp, qp->cb_data, m, len);
		else
			FUNC7(m);

		FUNC8(&qp->ntb_rx_q_lock);
	}

	FUNC9(&qp->ntb_rx_q_lock);
}