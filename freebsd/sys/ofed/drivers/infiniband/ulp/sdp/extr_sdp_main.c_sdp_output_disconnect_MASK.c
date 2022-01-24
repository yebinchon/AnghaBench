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
struct sdp_sock {int flags; int /*<<< orphan*/  keep2msl; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int SDP_DREQWAIT ; 
 int /*<<< orphan*/  SDP_FIN_WAIT_TIMEOUT ; 
 int SDP_NEEDFIN ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdp_sock*) ; 
 int /*<<< orphan*/  sdp_dreq_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sdp_sock *ssk)
{

	FUNC0(ssk);
	FUNC1(&ssk->keep2msl, SDP_FIN_WAIT_TIMEOUT,
	    sdp_dreq_timeout, ssk);
	ssk->flags |= SDP_NEEDFIN | SDP_DREQWAIT;
	FUNC2(ssk, M_NOWAIT);
}