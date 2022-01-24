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
struct sdp_sock {scalar_t__ state; int flags; scalar_t__ qp_active; int /*<<< orphan*/  keep2msl; } ;

/* Variables and functions */
 int SDP_DISCON ; 
 int SDP_DREQWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 scalar_t__ TCPS_FIN_WAIT_1 ; 
 scalar_t__ TCPS_LAST_ACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdp_sock*) ; 

__attribute__((used)) static void
FUNC5(void *data)
{
	struct sdp_sock *ssk;

	ssk = data;
	/* Callout canceled. */
        if (!FUNC1(&ssk->keep2msl))
		goto out;
	/* Callout rescheduled, probably as a different timer. */
	if (FUNC3(&ssk->keep2msl))
		goto out;
        FUNC2(&ssk->keep2msl);
	if (ssk->state != TCPS_FIN_WAIT_1 && ssk->state != TCPS_LAST_ACK)
		goto out;
	if ((ssk->flags & SDP_DREQWAIT) == 0)
		goto out;
	ssk->flags &= ~SDP_DREQWAIT;
	ssk->flags |= SDP_DISCON;
	FUNC4(ssk);
	ssk->qp_active = 0;
out:
	FUNC0(ssk);
}