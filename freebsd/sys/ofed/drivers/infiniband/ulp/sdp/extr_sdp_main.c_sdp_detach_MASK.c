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
struct socket {int dummy; } ;
struct sdp_sock {int flags; scalar_t__ state; TYPE_1__* socket; } ;
struct TYPE_2__ {int /*<<< orphan*/ * so_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SDP_DREQWAIT ; 
 int SDP_DROPPED ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 scalar_t__ TCPS_SYN_SENT ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 
 struct sdp_sock* FUNC5 (struct socket*) ; 

__attribute__((used)) static void
FUNC6(struct socket *so)
{
	struct sdp_sock *ssk;

	ssk = FUNC5(so);
	FUNC1(ssk);
	FUNC0(ssk->socket != NULL, ("sdp_detach: socket is NULL"));
	ssk->socket->so_pcb = NULL;
	ssk->socket = NULL;
	if (ssk->flags & (SDP_TIMEWAIT | SDP_DREQWAIT))
		FUNC2(ssk);
	else if (ssk->flags & SDP_DROPPED || ssk->state < TCPS_SYN_SENT)
		FUNC4(ssk);
	else
		FUNC3("sdp_detach: Unexpected state, ssk %p.\n", ssk);
}