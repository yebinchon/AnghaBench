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
struct ntb_transport_qp {unsigned long long qp_num; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  cb_data; int /*<<< orphan*/  (* tx_handler ) (struct ntb_transport_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  dev; } ;
struct ntb_queue_entry {int flags; scalar_t__ len; int /*<<< orphan*/ * buf; struct ntb_payload_header* x_hdr; struct ntb_transport_qp* qp; } ;
struct ntb_payload_header {int /*<<< orphan*/  flags; int /*<<< orphan*/  ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct ntb_payload_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct ntb_queue_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_NTB ; 
 int NTBT_DESC_DONE_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct ntb_queue_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_transport_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(void *data)
{
	struct ntb_queue_entry *entry = data;
	struct ntb_transport_qp *qp = entry->qp;
	struct ntb_payload_header *hdr = entry->x_hdr;

	FUNC2(entry->flags | NTBT_DESC_DONE_FLAG, &hdr->flags);
	FUNC0(KTR_NTB, "TX: hdr %p set DESC_DONE", hdr);

	FUNC5(qp->dev, 1ull << qp->qp_num);

	/*
	 * The entry length can only be zero if the packet is intended to be a
	 * "link down" or similar.  Since no payload is being sent in these
	 * cases, there is nothing to add to the completion queue.
	 */
	if (entry->len > 0) {
		qp->tx_bytes += entry->len;

		if (qp->tx_handler)
			qp->tx_handler(qp, qp->cb_data, entry->buf,
			    entry->len);
		else
			FUNC3(entry->buf);
		entry->buf = NULL;
	}

	FUNC1(KTR_NTB,
	    "TX: entry %p sent. hdr->ver = %u, hdr->flags = 0x%x, Returning "
	    "to tx_free_q", entry, hdr->ver, hdr->flags);
	FUNC4(&qp->ntb_tx_free_q_lock, entry, &qp->tx_free_q);
}