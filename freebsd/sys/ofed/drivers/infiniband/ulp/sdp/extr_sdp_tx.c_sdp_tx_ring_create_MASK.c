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
struct TYPE_2__ {int /*<<< orphan*/ * buffer; scalar_t__ poll_cnt; struct ib_cq* cq; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  timer; } ;
struct sdp_sock {TYPE_1__ tx_ring; int /*<<< orphan*/  socket; int /*<<< orphan*/  lock; int /*<<< orphan*/  nagle_timer; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; int /*<<< orphan*/  flags; int /*<<< orphan*/  comp_vector; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_cq*) ; 
 int /*<<< orphan*/  M_SDP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (struct ib_cq*) ; 
 int SDP_TX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_cq* FUNC5 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdp_sock*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sdp_tx_cq_event_handler ; 
 int /*<<< orphan*/  sdp_tx_irq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC10(struct sdp_sock *ssk, struct ib_device *device)
{
	struct ib_cq_init_attr tx_cq_attr = {
		.cqe = SDP_TX_SIZE,
		.comp_vector = 0,
		.flags = 0,
	};
	struct ib_cq *tx_cq;
	int rc = 0;

	FUNC8(ssk->socket, "tx ring create\n");
	FUNC3(&ssk->tx_ring.timer, &ssk->lock, 0);
	FUNC3(&ssk->nagle_timer, &ssk->lock, 0);
	FUNC2(&ssk->tx_ring.head, 1);
	FUNC2(&ssk->tx_ring.tail, 1);

	ssk->tx_ring.buffer = FUNC6(sizeof(*ssk->tx_ring.buffer) * SDP_TX_SIZE,
	    M_SDP, M_WAITOK);

	tx_cq = FUNC5(device, sdp_tx_irq, sdp_tx_cq_event_handler,
			  ssk, &tx_cq_attr);
	if (FUNC0(tx_cq)) {
		rc = FUNC1(tx_cq);
		FUNC9(ssk->socket, "Unable to allocate TX CQ: %d.\n", rc);
		goto err_cq;
	}
	ssk->tx_ring.cq = tx_cq;
	ssk->tx_ring.poll_cnt = 0;
	FUNC7(ssk);

	return 0;

err_cq:
	FUNC4(ssk->tx_ring.buffer, M_SDP);
	ssk->tx_ring.buffer = NULL;
	return rc;
}