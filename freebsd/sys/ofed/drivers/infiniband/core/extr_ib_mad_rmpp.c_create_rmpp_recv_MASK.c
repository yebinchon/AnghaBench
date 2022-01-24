#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mad_rmpp_recv {int newwin; int seg_num; int repwin; int /*<<< orphan*/  base_version; int /*<<< orphan*/  method; int /*<<< orphan*/  class_version; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  slid; int /*<<< orphan*/  src_qp; int /*<<< orphan*/  tid; scalar_t__ last_ack; TYPE_4__* cur_seg_buf; struct ib_mad_recv_wc* rmpp_wc; int /*<<< orphan*/  refcount; int /*<<< orphan*/  state; int /*<<< orphan*/  lock; int /*<<< orphan*/  cleanup_work; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  comp; struct ib_mad_agent_private* agent; int /*<<< orphan*/  ah; } ;
struct TYPE_9__ {TYPE_3__* mad; int /*<<< orphan*/  grh; } ;
struct ib_mad_recv_wc {TYPE_5__* wc; TYPE_4__ recv_buf; } ;
struct ib_mad_hdr {int /*<<< orphan*/  base_version; int /*<<< orphan*/  method; int /*<<< orphan*/  class_version; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  tid; } ;
struct TYPE_7__ {int /*<<< orphan*/  port_num; TYPE_1__* qp; } ;
struct ib_mad_agent_private {TYPE_2__ agent; } ;
struct TYPE_10__ {int /*<<< orphan*/  slid; int /*<<< orphan*/  src_qp; } ;
struct TYPE_8__ {struct ib_mad_hdr mad_hdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RMPP_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mad_rmpp_recv*) ; 
 struct mad_rmpp_recv* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recv_cleanup_handler ; 
 int /*<<< orphan*/  recv_timeout_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mad_rmpp_recv *
FUNC8(struct ib_mad_agent_private *agent,
		 struct ib_mad_recv_wc *mad_recv_wc)
{
	struct mad_rmpp_recv *rmpp_recv;
	struct ib_mad_hdr *mad_hdr;

	rmpp_recv = FUNC6(sizeof *rmpp_recv, GFP_KERNEL);
	if (!rmpp_recv)
		return NULL;

	rmpp_recv->ah = FUNC3(agent->agent.qp->pd,
					     mad_recv_wc->wc,
					     mad_recv_wc->recv_buf.grh,
					     agent->agent.port_num);
	if (FUNC1(rmpp_recv->ah))
		goto error;

	rmpp_recv->agent = agent;
	FUNC4(&rmpp_recv->comp);
	FUNC0(&rmpp_recv->timeout_work, recv_timeout_handler);
	FUNC0(&rmpp_recv->cleanup_work, recv_cleanup_handler);
	FUNC7(&rmpp_recv->lock);
	rmpp_recv->state = RMPP_STATE_ACTIVE;
	FUNC2(&rmpp_recv->refcount, 1);

	rmpp_recv->rmpp_wc = mad_recv_wc;
	rmpp_recv->cur_seg_buf = &mad_recv_wc->recv_buf;
	rmpp_recv->newwin = 1;
	rmpp_recv->seg_num = 1;
	rmpp_recv->last_ack = 0;
	rmpp_recv->repwin = 1;

	mad_hdr = &mad_recv_wc->recv_buf.mad->mad_hdr;
	rmpp_recv->tid = mad_hdr->tid;
	rmpp_recv->src_qp = mad_recv_wc->wc->src_qp;
	rmpp_recv->slid = mad_recv_wc->wc->slid;
	rmpp_recv->mgmt_class = mad_hdr->mgmt_class;
	rmpp_recv->class_version = mad_hdr->class_version;
	rmpp_recv->method  = mad_hdr->method;
	rmpp_recv->base_version  = mad_hdr->base_version;
	return rmpp_recv;

error:	FUNC5(rmpp_recv);
	return NULL;
}