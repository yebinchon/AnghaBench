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
typedef  int /*<<< orphan*/  u8 ;
struct ib_rmpp_hdr {scalar_t__ seg_num; scalar_t__ rmpp_status; } ;
struct ib_rmpp_mad {struct ib_rmpp_hdr rmpp_hdr; } ;
struct TYPE_2__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct ib_mad_agent_private {int dummy; } ;

/* Variables and functions */
 int IB_MGMT_RMPP_FLAG_FIRST ; 
 int /*<<< orphan*/  IB_MGMT_RMPP_STATUS_BAD_SEG ; 
 int /*<<< orphan*/  IB_MGMT_RMPP_STATUS_BAD_STATUS ; 
 struct ib_mad_recv_wc* FUNC0 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_recv_wc*) ; 
 int FUNC3 (struct ib_rmpp_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int /*<<< orphan*/ ) ; 
 struct ib_mad_recv_wc* FUNC5 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 

__attribute__((used)) static struct ib_mad_recv_wc *
FUNC6(struct ib_mad_agent_private *agent,
		  struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_rmpp_hdr *rmpp_hdr;
	u8 rmpp_status;

	rmpp_hdr = &((struct ib_rmpp_mad *)mad_recv_wc->recv_buf.mad)->rmpp_hdr;

	if (rmpp_hdr->rmpp_status) {
		rmpp_status = IB_MGMT_RMPP_STATUS_BAD_STATUS;
		goto bad;
	}

	if (rmpp_hdr->seg_num == FUNC1(1)) {
		if (!(FUNC3(rmpp_hdr) & IB_MGMT_RMPP_FLAG_FIRST)) {
			rmpp_status = IB_MGMT_RMPP_STATUS_BAD_SEG;
			goto bad;
		}
		return FUNC5(agent, mad_recv_wc);
	} else {
		if (FUNC3(rmpp_hdr) & IB_MGMT_RMPP_FLAG_FIRST) {
			rmpp_status = IB_MGMT_RMPP_STATUS_BAD_SEG;
			goto bad;
		}
		return FUNC0(agent, mad_recv_wc);
	}
bad:
	FUNC4(agent, mad_recv_wc, rmpp_status);
	FUNC2(mad_recv_wc);
	return NULL;
}