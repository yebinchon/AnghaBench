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
struct socket {int dummy; } ;
struct sdp_sock {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SDP_DROPPED ; 
 int SDP_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdp_sock*,int /*<<< orphan*/ ) ; 
 struct sdp_sock* FUNC4 (struct socket*) ; 

void
FUNC5(struct socket *so)
{
	struct sdp_sock *ssk;

	ssk = FUNC4(so);
	FUNC1(ssk);
	/*
	 * If we have not yet dropped, do it now.
	 */
	if (!(ssk->flags & SDP_TIMEWAIT) &&
	    !(ssk->flags & SDP_DROPPED))
		FUNC3(ssk, ECONNABORTED);
	FUNC0(ssk->flags & SDP_DROPPED, ("sdp_abort: %p not dropped 0x%X",
	    ssk, ssk->flags));
	FUNC2(ssk);
}