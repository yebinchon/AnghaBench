#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  scalar_t__ u8 ;
struct TYPE_14__ {int /*<<< orphan*/  ah; scalar_t__ mad; } ;
struct ib_mad_send_wr_private {TYPE_3__ send_buf; } ;
struct TYPE_11__ {TYPE_9__* grh; TYPE_2__* mad; } ;
struct ib_mad_recv_wc {TYPE_10__ recv_buf; TYPE_5__* wc; } ;
struct ib_mad_hdr {int dummy; } ;
struct TYPE_12__ {scalar_t__ port_num; struct ib_device* device; } ;
struct ib_mad_agent_private {TYPE_1__ agent; } ;
struct ib_device {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  raw; } ;
struct TYPE_18__ {TYPE_6__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct ib_ah_attr {int ah_flags; int src_path_bits; scalar_t__ dlid; TYPE_7__ grh; } ;
struct TYPE_19__ {int /*<<< orphan*/  raw; } ;
struct TYPE_15__ {int /*<<< orphan*/  raw; } ;
struct TYPE_20__ {TYPE_8__ sgid; TYPE_4__ dgid; } ;
struct TYPE_16__ {int wc_flags; int dlid_path_bits; scalar_t__ slid; } ;
struct TYPE_13__ {struct ib_mad_hdr mad_hdr; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int IB_WC_GRH ; 
 scalar_t__ FUNC0 (struct ib_device*,scalar_t__,int /*<<< orphan*/ ,union ib_gid*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ib_device*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ib_ah_attr*) ; 
 scalar_t__ FUNC3 (struct ib_mad_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC5(const struct ib_mad_agent_private *mad_agent_priv,
				   const struct ib_mad_send_wr_private *wr,
				   const struct ib_mad_recv_wc *rwc )
{
	struct ib_ah_attr attr;
	u8 send_resp, rcv_resp;
	union ib_gid sgid;
	struct ib_device *device = mad_agent_priv->agent.device;
	u8 port_num = mad_agent_priv->agent.port_num;
	u8 lmc;

	send_resp = FUNC3((struct ib_mad_hdr *)wr->send_buf.mad);
	rcv_resp = FUNC3(&rwc->recv_buf.mad->mad_hdr);

	if (send_resp == rcv_resp)
		/* both requests, or both responses. GIDs different */
		return 0;

	if (FUNC2(wr->send_buf.ah, &attr))
		/* Assume not equal, to avoid false positives. */
		return 0;

	if (!!(attr.ah_flags & IB_AH_GRH) !=
	    !!(rwc->wc->wc_flags & IB_WC_GRH))
		/* one has GID, other does not.  Assume different */
		return 0;

	if (!send_resp && rcv_resp) {
		/* is request/response. */
		if (!(attr.ah_flags & IB_AH_GRH)) {
			if (FUNC1(device, port_num, &lmc))
				return 0;
			return (!lmc || !((attr.src_path_bits ^
					   rwc->wc->dlid_path_bits) &
					  ((1 << lmc) - 1)));
		} else {
			if (FUNC0(device, port_num,
					      attr.grh.sgid_index, &sgid, NULL))
				return 0;
			return !FUNC4(sgid.raw, rwc->recv_buf.grh->dgid.raw,
				       16);
		}
	}

	if (!(attr.ah_flags & IB_AH_GRH))
		return attr.dlid == rwc->wc->slid;
	else
		return !FUNC4(attr.grh.dgid.raw, rwc->recv_buf.grh->sgid.raw,
			       16);
}