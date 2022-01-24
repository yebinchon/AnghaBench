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
typedef  union rdma_network_hdr {int dummy; } rdma_network_hdr ;
struct TYPE_3__ {scalar_t__ interface_id; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  void* u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ib_wc {int wc_flags; int network_hdr_type; int vlan_id; int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  slid; } ;
struct ib_grh {int /*<<< orphan*/  version_tclass_flow; } ;
struct ib_gid_attr {int /*<<< orphan*/ * ndev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int flow_label; int hop_limit; int traffic_class; void* sgid_index; union ib_gid dgid; } ;
struct ib_ah_attr {TYPE_2__ grh; int /*<<< orphan*/  ah_flags; void* port_num; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; int /*<<< orphan*/  dmac; } ;
typedef  enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;

/* Variables and functions */
 int ENODEV ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  IB_AH_GRH ; 
 int IB_GID_TYPE_IB ; 
 int /*<<< orphan*/  IB_SA_WELL_KNOWN_GUID ; 
 int IB_WC_GRH ; 
 int IB_WC_WITH_NETWORK_HDR_TYPE ; 
 int IB_WC_WITH_VLAN ; 
 int RDMA_NETWORK_IB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (union rdma_network_hdr const*,int,union ib_gid*,union ib_gid*) ; 
 int FUNC4 (struct ib_device*,void*,int const,union ib_gid*,int,int*) ; 
 int FUNC5 (struct ib_device*,union ib_gid*,int,void*,int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (struct ib_device*,void*,int,union ib_gid*,struct ib_gid_attr*) ; 
 int FUNC7 (struct ib_device*,void*,struct ib_grh const*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (union ib_gid*,union ib_gid*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC11 (struct ib_device*,void*) ; 
 scalar_t__ FUNC12 (struct ib_device*,void*) ; 

int FUNC13(struct ib_device *device, u8 port_num,
		       const struct ib_wc *wc, const struct ib_grh *grh,
		       struct ib_ah_attr *ah_attr)
{
	u32 flow_class;
	u16 gid_index = 0;
	int ret;
	enum rdma_network_type net_type = RDMA_NETWORK_IB;
	enum ib_gid_type gid_type = IB_GID_TYPE_IB;
	int hoplimit = 0xff;
	union ib_gid dgid;
	union ib_gid sgid;

	FUNC9(ah_attr, 0, sizeof *ah_attr);
	if (FUNC11(device, port_num)) {
		if (wc->wc_flags & IB_WC_WITH_NETWORK_HDR_TYPE)
			net_type = wc->network_hdr_type;
		else
			net_type = FUNC7(device, port_num, grh);
		gid_type = FUNC8(net_type);
	}
	ret = FUNC3((const union rdma_network_hdr *)grh, net_type,
				     &sgid, &dgid);
	if (ret)
		return ret;

	if (FUNC12(device, port_num)) {
		struct ib_gid_attr dgid_attr;
		const u16 vlan_id = (wc->wc_flags & IB_WC_WITH_VLAN) ?
				wc->vlan_id : 0xffff;

		if (!(wc->wc_flags & IB_WC_GRH))
			return -EPROTOTYPE;

		ret = FUNC4(device, port_num, vlan_id,
					      &dgid, gid_type, &gid_index);
		if (ret)
			return ret;

		ret = FUNC6(device, port_num, gid_index, &dgid, &dgid_attr);
		if (ret)
			return ret;

		if (dgid_attr.ndev == NULL)
			return -ENODEV;

		ret = FUNC10(&dgid, &sgid, ah_attr->dmac,
		    dgid_attr.ndev, &hoplimit);

		FUNC2(dgid_attr.ndev);
		if (ret)
			return ret;
	}

	ah_attr->dlid = wc->slid;
	ah_attr->sl = wc->sl;
	ah_attr->src_path_bits = wc->dlid_path_bits;
	ah_attr->port_num = port_num;

	if (wc->wc_flags & IB_WC_GRH) {
		ah_attr->ah_flags = IB_AH_GRH;
		ah_attr->grh.dgid = sgid;

		if (!FUNC11(device, port_num)) {
			if (dgid.global.interface_id != FUNC1(IB_SA_WELL_KNOWN_GUID)) {
				ret = FUNC5(device, &dgid,
								 IB_GID_TYPE_IB,
								 port_num, NULL,
								 &gid_index);
				if (ret)
					return ret;
			}
		}

		ah_attr->grh.sgid_index = (u8) gid_index;
		flow_class = FUNC0(grh->version_tclass_flow);
		ah_attr->grh.flow_label = flow_class & 0xFFFFF;
		ah_attr->grh.hop_limit = hoplimit;
		ah_attr->grh.traffic_class = (flow_class >> 20) & 0xFF;
	}
	return 0;
}