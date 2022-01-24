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
struct mad_rmpp_recv {int /*<<< orphan*/  newwin; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  state; int /*<<< orphan*/  refcount; } ;
struct ib_mad_recv_wc {int /*<<< orphan*/  recv_buf; } ;
struct ib_mad_agent_private {TYPE_2__* qp_info; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__* port_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMPP_STATE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (struct mad_rmpp_recv*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mad_rmpp_recv*) ; 
 struct ib_mad_recv_wc* FUNC3 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 struct mad_rmpp_recv* FUNC4 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mad_rmpp_recv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mad_rmpp_recv*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_mad_recv_wc*) ; 
 scalar_t__ FUNC9 (struct ib_mad_agent_private*,struct mad_rmpp_recv*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (struct ib_mad_agent_private*) ; 

__attribute__((used)) static struct ib_mad_recv_wc *
FUNC15(struct ib_mad_agent_private *agent,
	   struct ib_mad_recv_wc *mad_recv_wc)
{
	struct mad_rmpp_recv *rmpp_recv;
	unsigned long flags;

	rmpp_recv = FUNC4(agent, mad_recv_wc);
	if (!rmpp_recv) {
		FUNC8(mad_recv_wc);
		return NULL;
	}

	FUNC12(&agent->lock, flags);
	if (FUNC9(agent, rmpp_recv)) {
		FUNC13(&agent->lock, flags);
		/* duplicate first MAD */
		FUNC6(rmpp_recv);
		return FUNC3(agent, mad_recv_wc);
	}
	FUNC1(&rmpp_recv->refcount);

	if (FUNC7(&mad_recv_wc->recv_buf)) {
		rmpp_recv->state = RMPP_STATE_COMPLETE;
		FUNC13(&agent->lock, flags);
		FUNC2(rmpp_recv);
	} else {
		FUNC13(&agent->lock, flags);
		/* 40 seconds until we can find the packet lifetimes */
		FUNC11(agent->qp_info->port_priv->wq,
				   &rmpp_recv->timeout_work,
				   FUNC10(40000));
		rmpp_recv->newwin += FUNC14(agent);
		FUNC0(rmpp_recv, mad_recv_wc);
		mad_recv_wc = NULL;
	}
	FUNC5(rmpp_recv);
	return mad_recv_wc;
}