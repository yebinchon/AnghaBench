#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * cq; int /*<<< orphan*/ * buffer; } ;
struct sdp_sock {TYPE_1__ rx_ring; int /*<<< orphan*/  socket; int /*<<< orphan*/  rx_comp_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SDP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

void
FUNC9(struct sdp_sock *ssk)
{

	FUNC1(&ssk->rx_comp_work);
	FUNC6(&ssk->rx_ring);

	if (ssk->rx_ring.buffer) {
		FUNC7(ssk);
		FUNC2(ssk->rx_ring.buffer, M_SDP);
		ssk->rx_ring.buffer = NULL;
	}

	if (ssk->rx_ring.cq) {
		if (FUNC3(ssk->rx_ring.cq)) {
			FUNC8(ssk->socket, "destroy cq(%p) failed\n",
				ssk->rx_ring.cq);
		} else {
			ssk->rx_ring.cq = NULL;
		}
	}

	FUNC0(FUNC4(ssk->rx_ring) != FUNC5(ssk->rx_ring));
}