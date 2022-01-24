#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * cq; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  timer; } ;
struct sdp_sock {TYPE_1__ tx_ring; int /*<<< orphan*/  socket; int /*<<< orphan*/  nagle_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SDP ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 scalar_t__ FUNC8 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void
FUNC12(struct sdp_sock *ssk)
{

	FUNC9(ssk->socket, "tx ring destroy\n");
	FUNC0(ssk);
	FUNC4(&ssk->tx_ring.timer);
	FUNC4(&ssk->nagle_timer);
	FUNC1(ssk);
	FUNC3(&ssk->tx_ring.timer);
	FUNC3(&ssk->nagle_timer);

	if (ssk->tx_ring.buffer) {
		FUNC10(ssk);
		FUNC5(ssk->tx_ring.buffer, M_SDP);
		ssk->tx_ring.buffer = NULL;
	}

	if (ssk->tx_ring.cq) {
		if (FUNC6(ssk->tx_ring.cq)) {
			FUNC11(ssk->socket, "destroy cq(%p) failed\n",
					ssk->tx_ring.cq);
		} else {
			ssk->tx_ring.cq = NULL;
		}
	}

	FUNC2(FUNC7(ssk->tx_ring) != FUNC8(ssk->tx_ring));
}