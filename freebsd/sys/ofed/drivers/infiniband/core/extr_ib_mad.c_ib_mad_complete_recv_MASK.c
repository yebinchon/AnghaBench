#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ib_rmpp_mad {int /*<<< orphan*/  rmpp_hdr; } ;
struct ib_mad_send_wr_private {int /*<<< orphan*/  send_buf; } ;
struct ib_mad_send_wc {int /*<<< orphan*/ * send_buf; scalar_t__ vendor_err; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {TYPE_1__* mad; int /*<<< orphan*/  list; } ;
struct ib_mad_recv_wc {TYPE_2__ recv_buf; int /*<<< orphan*/  rmpp_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* recv_handler ) (TYPE_3__*,int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ;} ;
struct ib_mad_agent_private {TYPE_3__ agent; int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  mgmt_class; } ;
struct TYPE_8__ {TYPE_6__ mad_hdr; } ;

/* Variables and functions */
 int IB_MGMT_RMPP_FLAG_ACTIVE ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_agent_private*) ; 
 struct ib_mad_send_wr_private* FUNC3 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_recv_wc*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_send_wr_private*,struct ib_mad_send_wc*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_mad_send_wr_private*) ; 
 struct ib_mad_recv_wc* FUNC10 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 scalar_t__ FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ *,struct ib_mad_recv_wc*) ; 

__attribute__((used)) static void FUNC18(struct ib_mad_agent_private *mad_agent_priv,
				 struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_mad_send_wr_private *mad_send_wr;
	struct ib_mad_send_wc mad_send_wc;
	unsigned long flags;

	FUNC0(&mad_recv_wc->rmpp_list);
	FUNC12(&mad_recv_wc->recv_buf.list, &mad_recv_wc->rmpp_list);
	if (FUNC8(&mad_agent_priv->agent)) {
		mad_recv_wc = FUNC10(mad_agent_priv,
						      mad_recv_wc);
		if (!mad_recv_wc) {
			FUNC2(mad_agent_priv);
			return;
		}
	}

	/* Complete corresponding request */
	if (FUNC11(&mad_recv_wc->recv_buf.mad->mad_hdr)) {
		FUNC13(&mad_agent_priv->lock, flags);
		mad_send_wr = FUNC3(mad_agent_priv, mad_recv_wc);
		if (!mad_send_wr) {
			FUNC14(&mad_agent_priv->lock, flags);
			if (!FUNC8(&mad_agent_priv->agent)
			   && FUNC6(mad_recv_wc->recv_buf.mad->mad_hdr.mgmt_class)
			   && (FUNC5(&((struct ib_rmpp_mad *)mad_recv_wc->recv_buf.mad)->rmpp_hdr)
					& IB_MGMT_RMPP_FLAG_ACTIVE)) {
				/* user rmpp is in effect
				 * and this is an active RMPP MAD
				 */
				mad_agent_priv->agent.recv_handler(
						&mad_agent_priv->agent, NULL,
						mad_recv_wc);
				FUNC1(&mad_agent_priv->refcount);
			} else {
				/* not user rmpp, revert to normal behavior and
				 * drop the mad */
				FUNC4(mad_recv_wc);
				FUNC2(mad_agent_priv);
				return;
			}
		} else {
			FUNC9(mad_send_wr);
			FUNC14(&mad_agent_priv->lock, flags);

			/* Defined behavior is to complete response before request */
			mad_agent_priv->agent.recv_handler(
					&mad_agent_priv->agent,
					&mad_send_wr->send_buf,
					mad_recv_wc);
			FUNC1(&mad_agent_priv->refcount);

			mad_send_wc.status = IB_WC_SUCCESS;
			mad_send_wc.vendor_err = 0;
			mad_send_wc.send_buf = &mad_send_wr->send_buf;
			FUNC7(mad_send_wr, &mad_send_wc);
		}
	} else {
		mad_agent_priv->agent.recv_handler(&mad_agent_priv->agent, NULL,
						   mad_recv_wc);
		FUNC2(mad_agent_priv);
	}
}