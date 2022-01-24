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
typedef  size_t u16 ;
struct ib_mad_send_wc {int status; struct ib_mad_send_buf* send_buf; } ;
struct ib_mad_send_buf {int retries; scalar_t__* context; scalar_t__ mad; } ;
struct ib_mad_hdr {int /*<<< orphan*/  attr_id; } ;
struct ib_mad_agent {struct cm_port* context; } ;
struct cm_port {TYPE_1__* counter_group; } ;
struct TYPE_2__ {int /*<<< orphan*/ * counter; } ;

/* Variables and functions */
 size_t CM_ATTR_ID_OFFSET ; 
 size_t CM_REJ_COUNTER ; 
 size_t CM_XMIT ; 
 size_t CM_XMIT_RETRIES ; 
#define  IB_WC_SUCCESS 129 
#define  IB_WC_WR_FLUSH_ERR 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_send_buf*,int) ; 

__attribute__((used)) static void FUNC4(struct ib_mad_agent *mad_agent,
			    struct ib_mad_send_wc *mad_send_wc)
{
	struct ib_mad_send_buf *msg = mad_send_wc->send_buf;
	struct cm_port *port;
	u16 attr_index;

	port = mad_agent->context;
	attr_index = FUNC1(((struct ib_mad_hdr *)
				  msg->mad)->attr_id) - CM_ATTR_ID_OFFSET;

	/*
	 * If the send was in response to a received message (context[0] is not
	 * set to a cm_id), and is not a REJ, then it is a send that was
	 * manually retried.
	 */
	if (!msg->context[0] && (attr_index != CM_REJ_COUNTER))
		msg->retries = 1;

	FUNC0(1 + msg->retries,
			&port->counter_group[CM_XMIT].counter[attr_index]);
	if (msg->retries)
		FUNC0(msg->retries,
				&port->counter_group[CM_XMIT_RETRIES].
				counter[attr_index]);

	switch (mad_send_wc->status) {
	case IB_WC_SUCCESS:
	case IB_WC_WR_FLUSH_ERR:
		FUNC2(msg);
		break;
	default:
		if (msg->context[0] && msg->context[1])
			FUNC3(msg, mad_send_wc->status);
		else
			FUNC2(msg);
		break;
	}
}