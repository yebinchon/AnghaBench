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
struct ntb_transport_qp {unsigned long long qp_num; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  rx_post_q; int /*<<< orphan*/  ntb_rx_q_lock; int /*<<< orphan*/  rx_pend_q; int /*<<< orphan*/ * event_handler; int /*<<< orphan*/ * tx_handler; int /*<<< orphan*/ * rx_handler; int /*<<< orphan*/ * cb_data; int /*<<< orphan*/  rxc_tq; int /*<<< orphan*/  dev; int /*<<< orphan*/  link_work; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_ctx {int qp_bitmap; } ;
struct ntb_queue_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NTB_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long long) ; 
 struct ntb_queue_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct ntb_transport_qp *qp)
{
	struct ntb_transport_ctx *nt = qp->transport;
	struct ntb_queue_entry *entry;

	FUNC0(&qp->link_work);

	FUNC2(qp->dev, 1ull << qp->qp_num);
	FUNC4(qp->rxc_tq);
	FUNC5(qp->rxc_tq);

	qp->cb_data = NULL;
	qp->rx_handler = NULL;
	qp->tx_handler = NULL;
	qp->event_handler = NULL;

	while ((entry = FUNC3(&qp->ntb_rx_q_lock, &qp->rx_pend_q)))
		FUNC1(entry, M_NTB_T);

	while ((entry = FUNC3(&qp->ntb_rx_q_lock, &qp->rx_post_q)))
		FUNC1(entry, M_NTB_T);

	while ((entry = FUNC3(&qp->ntb_tx_free_q_lock, &qp->tx_free_q)))
		FUNC1(entry, M_NTB_T);

	nt->qp_bitmap &= ~(1 << qp->qp_num);
}