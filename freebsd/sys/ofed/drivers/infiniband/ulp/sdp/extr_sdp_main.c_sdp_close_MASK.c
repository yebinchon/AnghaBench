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
struct socket {int /*<<< orphan*/  so_state; } ;
struct sdp_sock {int flags; } ;

/* Variables and functions */
 int SDP_DROPPED ; 
 int SDP_SOCKREF ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  SS_PROTOREF ; 
 struct sdp_sock* FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_sock*) ; 

__attribute__((used)) static void
FUNC6(struct socket *so)
{
	struct sdp_sock *ssk;

	ssk = FUNC4(so);
	FUNC0(ssk);
	/*
	 * If we have not yet dropped, do it now.
	 */
	if (!(ssk->flags & SDP_TIMEWAIT) &&
	    !(ssk->flags & SDP_DROPPED)) 
		FUNC5(ssk);

	/*
	 * If we've still not dropped let the socket layer know we're
	 * holding on to the socket and pcb for a while.
	 */
	if (!(ssk->flags & SDP_DROPPED)) {
		FUNC2(so);
		so->so_state |= SS_PROTOREF;
		FUNC3(so);
		ssk->flags |= SDP_SOCKREF;
	}
	FUNC1(ssk);
}