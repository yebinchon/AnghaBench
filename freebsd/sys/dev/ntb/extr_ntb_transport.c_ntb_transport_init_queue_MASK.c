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
typedef  scalar_t__ vm_paddr_t ;
typedef  size_t uint64_t ;
struct ntb_transport_qp {unsigned int qp_num; int client_ready; scalar_t__ tx_mw_phys; size_t tx_max_frame; size_t tx_max_entry; int /*<<< orphan*/  tx_free_q; int /*<<< orphan*/  rx_pend_q; int /*<<< orphan*/  rx_post_q; int /*<<< orphan*/  rxc_tq; int /*<<< orphan*/  rxc_db_work; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  ntb_tx_free_q_lock; int /*<<< orphan*/  ntb_rx_q_lock; int /*<<< orphan*/  rx_full; int /*<<< orphan*/  link_work; int /*<<< orphan*/ * tx_mw; void* rx_info; int /*<<< orphan*/ * event_handler; int /*<<< orphan*/  dev; struct ntb_transport_ctx* transport; } ;
struct ntb_transport_mw {scalar_t__ phys_addr; unsigned int tx_size; int /*<<< orphan*/ * vbase; } ;
struct ntb_transport_ctx {unsigned int mw_count; unsigned int qp_count; int /*<<< orphan*/  dev; struct ntb_transport_qp* qp_vec; struct ntb_transport_mw* mw_vec; } ;
struct ntb_rx_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_NET ; 
 unsigned int FUNC1 (struct ntb_transport_ctx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ntb_transport_qp*) ; 
 int /*<<< orphan*/  ntb_transport_rxc_db ; 
 size_t FUNC8 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int /*<<< orphan*/  transport_mtu ; 

__attribute__((used)) static void
FUNC11(struct ntb_transport_ctx *nt, unsigned int qp_num)
{
	struct ntb_transport_mw *mw;
	struct ntb_transport_qp *qp;
	vm_paddr_t mw_base;
	uint64_t qp_offset;
	size_t tx_size;
	unsigned num_qps_mw, mw_num, mw_count;

	mw_count = nt->mw_count;
	mw_num = FUNC1(nt, qp_num);
	mw = &nt->mw_vec[mw_num];

	qp = &nt->qp_vec[qp_num];
	qp->qp_num = qp_num;
	qp->transport = nt;
	qp->dev = nt->dev;
	qp->client_ready = false;
	qp->event_handler = NULL;
	FUNC7(qp);

	if (mw_num < nt->qp_count % mw_count)
		num_qps_mw = nt->qp_count / mw_count + 1;
	else
		num_qps_mw = nt->qp_count / mw_count;

	mw_base = mw->phys_addr;

	tx_size = mw->tx_size / num_qps_mw;
	qp_offset = tx_size * (qp_num / mw_count);

	qp->tx_mw = mw->vbase + qp_offset;
	FUNC0(qp->tx_mw != NULL, ("uh oh?"));

	/* XXX Assumes that a vm_paddr_t is equivalent to bus_addr_t */
	qp->tx_mw_phys = mw_base + qp_offset;
	FUNC0(qp->tx_mw_phys != 0, ("uh oh?"));

	tx_size -= sizeof(struct ntb_rx_info);
	qp->rx_info = (void *)(qp->tx_mw + tx_size);

	/* Due to house-keeping, there must be at least 2 buffs */
	qp->tx_max_frame = FUNC8(transport_mtu, tx_size / 2);
	qp->tx_max_entry = tx_size / qp->tx_max_frame;

	FUNC4(&qp->link_work, 0);
	FUNC4(&qp->rx_full, 1);

	FUNC6(&qp->ntb_rx_q_lock, "ntb rx q", NULL, MTX_SPIN);
	FUNC6(&qp->ntb_tx_free_q_lock, "ntb tx free q", NULL, MTX_SPIN);
	FUNC6(&qp->tx_lock, "ntb transport tx", NULL, MTX_DEF);
	FUNC3(&qp->rxc_db_work, 0, ntb_transport_rxc_db, qp);
	qp->rxc_tq = FUNC9("ntbt_rx", M_WAITOK,
	    taskqueue_thread_enqueue, &qp->rxc_tq);
	FUNC10(&qp->rxc_tq, 1, PI_NET, "%s rx%d",
	    FUNC5(nt->dev), qp_num);

	FUNC2(&qp->rx_post_q);
	FUNC2(&qp->rx_pend_q);
	FUNC2(&qp->tx_free_q);
}