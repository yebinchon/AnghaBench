#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct ib_wc {scalar_t__ slid; int wc_flags; TYPE_1__* qp; int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  src_qp; } ;
struct ib_port_attr {scalar_t__ lid; } ;
struct TYPE_15__ {scalar_t__ mgmt_class; scalar_t__ method; scalar_t__ attr_id; int /*<<< orphan*/  status; } ;
struct ib_mad {TYPE_6__ mad_hdr; } ;
struct TYPE_13__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_14__ {TYPE_4__ global; } ;
struct TYPE_11__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_12__ {TYPE_2__ global; } ;
struct ib_grh {TYPE_5__ dgid; TYPE_3__ sgid; } ;
struct ib_device {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {scalar_t__ qp_num; } ;

/* Variables and functions */
 scalar_t__ IB_LID_PERMISSIVE ; 
 int IB_MAD_IGNORE_BKEY ; 
 int IB_MAD_IGNORE_MKEY ; 
 int IB_MAD_RESULT_CONSUMED ; 
 int IB_MAD_RESULT_FAILURE ; 
 int IB_MAD_RESULT_REPLY ; 
 int IB_MAD_RESULT_SUCCESS ; 
 scalar_t__ IB_MGMT_CLASS_CONG_MGMT ; 
 scalar_t__ IB_MGMT_CLASS_PERF_MGMT ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 scalar_t__ IB_MGMT_METHOD_GET ; 
 scalar_t__ IB_MGMT_METHOD_SET ; 
 scalar_t__ IB_MGMT_METHOD_TRAP ; 
 scalar_t__ IB_MGMT_METHOD_TRAP_REPRESS ; 
 scalar_t__ IB_SMP_ATTR_PORT_INFO ; 
 scalar_t__ IB_SMP_ATTR_SM_INFO ; 
 int IB_WC_GRH ; 
 scalar_t__ MLX4_IB_VENDOR_CLASS1 ; 
 scalar_t__ MLX4_IB_VENDOR_CLASS2 ; 
 int MLX4_MAD_IFC_IGNORE_BKEY ; 
 int MLX4_MAD_IFC_IGNORE_MKEY ; 
 int MLX4_MAD_IFC_NET_VIEW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,struct ib_mad const*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC5 (TYPE_7__*,int,int /*<<< orphan*/ ,struct ib_wc const*,struct ib_grh const*,struct ib_mad const*,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long long,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_device*,int /*<<< orphan*/ ,struct ib_mad const*,scalar_t__) ; 
 TYPE_7__* FUNC10 (struct ib_device*) ; 

__attribute__((used)) static int FUNC11(struct ib_device *ibdev, int mad_flags, u8 port_num,
			const struct ib_wc *in_wc, const struct ib_grh *in_grh,
			const struct ib_mad *in_mad, struct ib_mad *out_mad)
{
	u16 slid, prev_lid = 0;
	int err;
	struct ib_port_attr pattr;

	if (in_wc && in_wc->qp->qp_num) {
		FUNC8("received MAD: slid:%d sqpn:%d "
			"dlid_bits:%d dqpn:%d wc_flags:0x%x, cls %x, mtd %x, atr %x\n",
			in_wc->slid, in_wc->src_qp,
			in_wc->dlid_path_bits,
			in_wc->qp->qp_num,
			in_wc->wc_flags,
			in_mad->mad_hdr.mgmt_class, in_mad->mad_hdr.method,
			FUNC0(in_mad->mad_hdr.attr_id));
		if (in_wc->wc_flags & IB_WC_GRH) {
			FUNC8("sgid_hi:0x%016llx sgid_lo:0x%016llx\n",
				 (unsigned long long)FUNC1(in_grh->sgid.global.subnet_prefix),
				 (unsigned long long)FUNC1(in_grh->sgid.global.interface_id));
			FUNC8("dgid_hi:0x%016llx dgid_lo:0x%016llx\n",
				 (unsigned long long)FUNC1(in_grh->dgid.global.subnet_prefix),
				 (unsigned long long)FUNC1(in_grh->dgid.global.interface_id));
		}
	}

	slid = in_wc ? in_wc->slid : FUNC0(IB_LID_PERMISSIVE);

	if (in_mad->mad_hdr.method == IB_MGMT_METHOD_TRAP && slid == 0) {
		FUNC3(FUNC10(ibdev), port_num, in_mad);
		return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
	}

	if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
	    in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) {
		if (in_mad->mad_hdr.method   != IB_MGMT_METHOD_GET &&
		    in_mad->mad_hdr.method   != IB_MGMT_METHOD_SET &&
		    in_mad->mad_hdr.method   != IB_MGMT_METHOD_TRAP_REPRESS)
			return IB_MAD_RESULT_SUCCESS;

		/*
		 * Don't process SMInfo queries -- the SMA can't handle them.
		 */
		if (in_mad->mad_hdr.attr_id == IB_SMP_ATTR_SM_INFO)
			return IB_MAD_RESULT_SUCCESS;
	} else if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_PERF_MGMT ||
		   in_mad->mad_hdr.mgmt_class == MLX4_IB_VENDOR_CLASS1   ||
		   in_mad->mad_hdr.mgmt_class == MLX4_IB_VENDOR_CLASS2   ||
		   in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_CONG_MGMT) {
		if (in_mad->mad_hdr.method  != IB_MGMT_METHOD_GET &&
		    in_mad->mad_hdr.method  != IB_MGMT_METHOD_SET)
			return IB_MAD_RESULT_SUCCESS;
	} else
		return IB_MAD_RESULT_SUCCESS;

	if ((in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
	     in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
	    in_mad->mad_hdr.method == IB_MGMT_METHOD_SET &&
	    in_mad->mad_hdr.attr_id == IB_SMP_ATTR_PORT_INFO &&
	    !FUNC4(ibdev, port_num, &pattr))
		prev_lid = pattr.lid;

	err = FUNC5(FUNC10(ibdev),
			   (mad_flags & IB_MAD_IGNORE_MKEY ? MLX4_MAD_IFC_IGNORE_MKEY : 0) |
			   (mad_flags & IB_MAD_IGNORE_BKEY ? MLX4_MAD_IFC_IGNORE_BKEY : 0) |
			   MLX4_MAD_IFC_NET_VIEW,
			   port_num, in_wc, in_grh, in_mad, out_mad);
	if (err)
		return IB_MAD_RESULT_FAILURE;

	if (!out_mad->mad_hdr.status) {
		FUNC9(ibdev, port_num, in_mad, prev_lid);
		/* slaves get node desc from FW */
		if (!FUNC6(FUNC10(ibdev)->dev))
			FUNC7(ibdev, out_mad);
	}

	/* set return bit in status of directed route responses */
	if (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
		out_mad->mad_hdr.status |= FUNC2(1 << 15);

	if (in_mad->mad_hdr.method == IB_MGMT_METHOD_TRAP_REPRESS)
		/* no response for trap repress */
		return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;

	return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}