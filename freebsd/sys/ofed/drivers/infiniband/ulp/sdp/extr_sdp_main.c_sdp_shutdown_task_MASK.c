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
struct sdp_sock {int flags; int /*<<< orphan*/ * socket; } ;

/* Variables and functions */
 int SDP_DESTROY ; 
 int SDP_DISCON ; 
 int SDP_DREQWAIT ; 
 int SDP_DROPPED ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sdp_sock*) ; 
 int /*<<< orphan*/ * FUNC3 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_sock*) ; 

__attribute__((used)) static void
FUNC6(void *data, int pending)
{
	struct sdp_sock *ssk;

	ssk = data;
	FUNC0(ssk);
	/*
	 * I don't think this can race with another call to pcbfree()
	 * because SDP_TIMEWAIT protects it.  SDP_DESTROY may be redundant.
	 */
	if (ssk->flags & SDP_DESTROY)
		FUNC2("sdp_shutdown_task: Racing with pcbfree for ssk %p",
		    ssk);
	if (ssk->flags & SDP_DISCON)
		FUNC4(ssk);
	/* We have to clear this so sdp_detach() will call pcbfree(). */
	ssk->flags &= ~(SDP_TIMEWAIT | SDP_DREQWAIT);
	if ((ssk->flags & SDP_DROPPED) == 0 &&
	    FUNC3(ssk) == NULL)
		return;
	if (ssk->socket == NULL) {
		FUNC5(ssk);
		return;
	}
	FUNC1(ssk);
}