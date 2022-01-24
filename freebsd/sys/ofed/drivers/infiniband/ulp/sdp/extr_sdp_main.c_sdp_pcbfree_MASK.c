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
struct TYPE_2__ {int /*<<< orphan*/  destroyed_lock; } ;
struct sdp_sock {int flags; int /*<<< orphan*/  lock; TYPE_1__ rx_ring; int /*<<< orphan*/ * qp; scalar_t__ qp_active; int /*<<< orphan*/  cred; int /*<<< orphan*/ * socket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 int SDP_DESTROY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdp_count ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdp_sock*) ; 
 int /*<<< orphan*/  sdp_zone ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct sdp_sock*) ; 

__attribute__((used)) static void
FUNC14(struct sdp_sock *ssk)
{

	FUNC0(ssk->socket == NULL, ("ssk %p socket still attached", ssk));
	FUNC0((ssk->flags & SDP_DESTROY) == 0,
	    ("ssk %p already destroyed", ssk));

	FUNC9(ssk->socket, "Freeing pcb");
	FUNC4(ssk);
	ssk->flags |= SDP_DESTROY;
	FUNC5(ssk);
	FUNC2();
	sdp_count--;
	FUNC1(ssk, list);
	FUNC3();
	FUNC6(ssk->cred);
	ssk->qp_active = 0;
	if (ssk->qp) {
		FUNC7(ssk->qp);
		ssk->qp = NULL;
	}
	FUNC12(ssk);
	FUNC11(ssk);
	FUNC10(ssk);
	FUNC8(&ssk->rx_ring.destroyed_lock);
	FUNC8(&ssk->lock);
	FUNC13(sdp_zone, ssk);
}