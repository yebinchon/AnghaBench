#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  paylen_newwin; int /*<<< orphan*/  seg_num; scalar_t__ rmpp_status; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_7__ {int seg_count; int /*<<< orphan*/  timeout_ms; } ;
struct ib_mad_send_wr_private {int last_ack; scalar_t__ status; int newwin; int refcount; int seg_num; TYPE_4__* mad_agent_priv; int /*<<< orphan*/  agent_list; TYPE_3__ send_buf; int /*<<< orphan*/  max_retries; int /*<<< orphan*/  retries_left; scalar_t__ timeout; } ;
struct ib_mad_send_wc {TYPE_3__* send_buf; scalar_t__ vendor_err; scalar_t__ status; } ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct ib_mad_agent_private {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  send_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MGMT_RMPP_STATUS_BAD_STATUS ; 
 int /*<<< orphan*/  IB_MGMT_RMPP_STATUS_S2B ; 
 int /*<<< orphan*/  IB_MGMT_RMPP_STATUS_W2S ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_send_wr_private*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct ib_mad_send_wr_private* FUNC4 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_mad_send_wr_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_send_wr_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int) ; 
 int FUNC11 (struct ib_mad_send_wr_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct ib_mad_agent_private *agent,
			     struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_mad_send_wr_private *mad_send_wr;
	struct ib_rmpp_mad *rmpp_mad;
	unsigned long flags;
	int seg_num, newwin, ret;

	rmpp_mad = (struct ib_rmpp_mad *)mad_recv_wc->recv_buf.mad;
	if (rmpp_mad->rmpp_hdr.rmpp_status) {
		FUNC0(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_BAD_STATUS);
		FUNC9(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_BAD_STATUS);
		return;
	}

	seg_num = FUNC3(rmpp_mad->rmpp_hdr.seg_num);
	newwin = FUNC3(rmpp_mad->rmpp_hdr.paylen_newwin);
	if (newwin < seg_num) {
		FUNC0(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_W2S);
		FUNC9(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_W2S);
		return;
	}

	FUNC12(&agent->lock, flags);
	mad_send_wr = FUNC4(agent, mad_recv_wc);
	if (!mad_send_wr) {
		if (!seg_num)
			FUNC10(agent, mad_recv_wc, newwin);
		goto out;	/* Unmatched or DS RMPP ACK */
	}

	if ((mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) &&
	    (mad_send_wr->timeout)) {
		FUNC13(&agent->lock, flags);
		FUNC1(agent, mad_recv_wc);
		return;		/* Repeated ACK for DS RMPP transaction */
	}

	if ((mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) ||
	    (!mad_send_wr->timeout) || (mad_send_wr->status != IB_WC_SUCCESS))
		goto out;	/* Send is already done */

	if (seg_num > mad_send_wr->send_buf.seg_count ||
	    seg_num > mad_send_wr->newwin) {
		FUNC13(&agent->lock, flags);
		FUNC0(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_S2B);
		FUNC9(agent, mad_recv_wc, IB_MGMT_RMPP_STATUS_S2B);
		return;
	}

	if (newwin < mad_send_wr->newwin || seg_num < mad_send_wr->last_ack)
		goto out;	/* Old ACK */

	if (seg_num > mad_send_wr->last_ack) {
		FUNC2(mad_send_wr, seg_num);
		mad_send_wr->retries_left = mad_send_wr->max_retries;
	}
	mad_send_wr->newwin = newwin;
	if (mad_send_wr->last_ack == mad_send_wr->send_buf.seg_count) {
		/* If no response is expected, the ACK completes the send */
		if (!mad_send_wr->send_buf.timeout_ms) {
			struct ib_mad_send_wc wc;

			FUNC6(mad_send_wr);
			FUNC13(&agent->lock, flags);

			wc.status = IB_WC_SUCCESS;
			wc.vendor_err = 0;
			wc.send_buf = &mad_send_wr->send_buf;
			FUNC5(mad_send_wr, &wc);
			return;
		}
		if (mad_send_wr->refcount == 1)
			FUNC7(mad_send_wr,
					     mad_send_wr->send_buf.timeout_ms);
		FUNC13(&agent->lock, flags);
		FUNC1(agent, mad_recv_wc);
		return;
	} else if (mad_send_wr->refcount == 1 &&
		   mad_send_wr->seg_num < mad_send_wr->newwin &&
		   mad_send_wr->seg_num < mad_send_wr->send_buf.seg_count) {
		/* Send failure will just result in a timeout/retry */
		ret = FUNC11(mad_send_wr);
		if (ret)
			goto out;

		mad_send_wr->refcount++;
		FUNC8(&mad_send_wr->agent_list,
			      &mad_send_wr->mad_agent_priv->send_list);
	}
out:
	FUNC13(&agent->lock, flags);
}