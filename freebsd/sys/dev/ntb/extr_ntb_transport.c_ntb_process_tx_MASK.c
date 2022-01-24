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
struct ntb_transport_qp {int tx_max_frame; int /*<<< orphan*/  tx_pkts; int /*<<< orphan*/  tx_max_entry; int /*<<< orphan*/  tx_index; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  cb_data; int /*<<< orphan*/  (* tx_handler ) (struct ntb_transport_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tx_ring_full; TYPE_1__* remote_rx_info; } ;
struct ntb_queue_entry {int len; int /*<<< orphan*/ * buf; } ;
struct ntb_payload_header {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct ntb_queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  KTR_NTB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ntb_transport_qp*,struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ntb_queue_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ntb_transport_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ntb_transport_qp *qp, struct ntb_queue_entry *entry)
{

	FUNC3(KTR_NTB,
	    "TX: process_tx: tx_pkts=%lu, tx_index=%u, remote entry=%u",
	    qp->tx_pkts, qp->tx_index, qp->remote_rx_info->entry);
	if (qp->tx_index == qp->remote_rx_info->entry) {
		FUNC0(KTR_NTB, "TX: ring full");
		qp->tx_ring_full++;
		return (EAGAIN);
	}

	if (entry->len > qp->tx_max_frame - sizeof(struct ntb_payload_header)) {
		if (qp->tx_handler != NULL)
			qp->tx_handler(qp, qp->cb_data, entry->buf,
			    EIO);
		else
			FUNC4(entry->buf);

		entry->buf = NULL;
		FUNC6(&qp->ntb_tx_free_q_lock, entry, &qp->tx_free_q);
		FUNC1(KTR_NTB,
		    "TX: frame too big. returning entry %p to tx_free_q",
		    entry);
		return (0);
	}
	FUNC2(KTR_NTB, "TX: copying entry %p to index %u", entry, qp->tx_index);
	FUNC5(qp, entry);

	qp->tx_index++;
	qp->tx_index %= qp->tx_max_entry;

	qp->tx_pkts++;

	return (0);
}