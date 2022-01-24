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
struct TYPE_9__ {int g_slid; int /*<<< orphan*/  dgid; int /*<<< orphan*/  gid_index; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sl_tclass_flowlabel; scalar_t__ stat_rate; int /*<<< orphan*/  dlid; int /*<<< orphan*/  port_pd; } ;
struct TYPE_6__ {int /*<<< orphan*/  sl_tclass_flowlabel; } ;
struct TYPE_10__ {TYPE_4__ ib; TYPE_1__ eth; } ;
struct mlx4_ib_ah {TYPE_5__ av; } ;
struct TYPE_7__ {int /*<<< orphan*/  raw; } ;
struct TYPE_8__ {int traffic_class; int flow_label; TYPE_2__ dgid; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  hop_limit; } ;
struct ib_ah_attr {int port_num; int sl; int src_path_bits; TYPE_3__ grh; int /*<<< orphan*/  ah_flags; scalar_t__ static_rate; int /*<<< orphan*/  dlid; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int /*<<< orphan*/  IB_AH_GRH ; 
 int IB_LINK_LAYER_ETHERNET ; 
 int IB_LINK_LAYER_INFINIBAND ; 
 scalar_t__ MLX4_STAT_RATE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct mlx4_ib_ah*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct mlx4_ib_ah* FUNC6 (struct ib_ah*) ; 

int FUNC7(struct ib_ah *ibah, struct ib_ah_attr *ah_attr)
{
	struct mlx4_ib_ah *ah = FUNC6(ibah);
	enum rdma_link_layer ll;

	FUNC3(ah_attr, 0, sizeof *ah_attr);
	ah_attr->port_num = FUNC1(ah->av.ib.port_pd) >> 24;
	ll = FUNC5(ibah->device, ah_attr->port_num);
	if (ll == IB_LINK_LAYER_ETHERNET)
		ah_attr->sl = FUNC1(ah->av.eth.sl_tclass_flowlabel) >> 29;
	else
		ah_attr->sl = FUNC1(ah->av.ib.sl_tclass_flowlabel) >> 28;

	ah_attr->dlid = ll == IB_LINK_LAYER_INFINIBAND ? FUNC0(ah->av.ib.dlid) : 0;
	if (ah->av.ib.stat_rate)
		ah_attr->static_rate = ah->av.ib.stat_rate - MLX4_STAT_RATE_OFFSET;
	ah_attr->src_path_bits = ah->av.ib.g_slid & 0x7F;

	if (FUNC4(ah)) {
		ah_attr->ah_flags = IB_AH_GRH;

		ah_attr->grh.traffic_class =
			FUNC1(ah->av.ib.sl_tclass_flowlabel) >> 20;
		ah_attr->grh.flow_label =
			FUNC1(ah->av.ib.sl_tclass_flowlabel) & 0xfffff;
		ah_attr->grh.hop_limit  = ah->av.ib.hop_limit;
		ah_attr->grh.sgid_index = ah->av.ib.gid_index;
		FUNC2(ah_attr->grh.dgid.raw, ah->av.ib.dgid, 16);
	}

	return 0;
}