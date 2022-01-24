#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct sdp_sock {TYPE_2__ rx_ring; int /*<<< orphan*/  socket; int /*<<< orphan*/  rx_comp_work; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; int /*<<< orphan*/  flags; int /*<<< orphan*/  comp_vector; } ;
struct ib_cq {int dummy; } ;
struct TYPE_4__ {struct ib_cq* cq; } ;
struct TYPE_6__ {TYPE_1__ rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ib_cq*) ; 
 int /*<<< orphan*/  M_SDP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC2 (struct ib_cq*) ; 
 int SDP_RX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_cq* FUNC5 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdp_sock*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sdp_rx_comp_work ; 
 int /*<<< orphan*/  sdp_rx_cq_event_handler ; 
 int /*<<< orphan*/  sdp_rx_irq ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC11(struct sdp_sock *ssk, struct ib_device *device)
{
	struct ib_cq_init_attr rx_cq_attr = {
		.cqe = SDP_RX_SIZE,
		.comp_vector = 0,
		.flags = 0,
	};
	struct ib_cq *rx_cq;
	int rc = 0;

	FUNC8(ssk->socket, "rx ring created");
	FUNC0(&ssk->rx_comp_work, sdp_rx_comp_work);
	FUNC3(&ssk->rx_ring.head, 1);
	FUNC3(&ssk->rx_ring.tail, 1);

	ssk->rx_ring.buffer = FUNC6(sizeof(*ssk->rx_ring.buffer) * SDP_RX_SIZE,
	    M_SDP, M_WAITOK);

	rx_cq = FUNC5(device, sdp_rx_irq, sdp_rx_cq_event_handler,
	    ssk, &rx_cq_attr);
	if (FUNC1(rx_cq)) {
		rc = FUNC2(rx_cq);
		FUNC10(ssk->socket, "Unable to allocate RX CQ: %d.\n", rc);
		goto err_cq;
	}

	FUNC9(ssk->socket)->rx_ring.cq = rx_cq;
	FUNC7(ssk);

	return 0;

err_cq:
	FUNC4(ssk->rx_ring.buffer, M_SDP);
	ssk->rx_ring.buffer = NULL;
	return rc;
}