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
struct socket {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq; } ;
struct TYPE_3__ {int /*<<< orphan*/  cq; } ;
struct sdp_sock {scalar_t__ state; TYPE_2__ tx_ring; TYPE_1__ rx_ring; int /*<<< orphan*/  rxctlq; int /*<<< orphan*/  qp_active; struct socket* socket; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ SDP_MIN_TX_CREDITS ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 scalar_t__ TCPS_TIME_WAIT ; 
 scalar_t__ FUNC1 (struct sdp_sock*) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdp_sock*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdp_sock*,int) ; 
 scalar_t__ FUNC9 (struct sdp_sock*) ; 
 scalar_t__ FUNC10 (struct sdp_sock*) ; 

void
FUNC11(struct sdp_sock *ssk)
{
	struct socket *sk = ssk->socket;
	int xmit_poll_force;
	struct mbuf *mb;

	FUNC0(ssk);
	if (!ssk->qp_active) {
		FUNC3(sk, "QP is deactivated\n");
		return;
	}

	while ((mb = FUNC2(&ssk->rxctlq)) != NULL)
		FUNC7(ssk, mb);

	if (ssk->state == TCPS_TIME_WAIT)
		return;

	if (!ssk->rx_ring.cq || !ssk->tx_ring.cq)
		return;

	FUNC4(ssk);

	if (FUNC10(ssk))
		FUNC8(ssk, 1);

	FUNC5(ssk, M_NOWAIT);

	xmit_poll_force = FUNC9(ssk) < SDP_MIN_TX_CREDITS;

	if (FUNC1(ssk) || xmit_poll_force) {
		/* if has pending tx because run out of tx_credits - xmit it */
		FUNC6(sk, NULL, "Processing to free pending sends");
		FUNC8(ssk,  xmit_poll_force);
		FUNC6(sk, NULL, "Sending credit update");
		FUNC5(ssk, M_NOWAIT);
	}

}