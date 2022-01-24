#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u16 ;
struct mlx4_ib_dev {struct mlx4_dev* dev; } ;
struct ib_ah {int dummy; } ;
struct TYPE_12__ {int gid_index; int stat_rate; void* sl_tclass_flowlabel; struct in6_addr* dgid; int /*<<< orphan*/  hop_limit; void* vlan; void* port_pd; struct in6_addr* s_mac; struct in6_addr* mac; } ;
struct TYPE_9__ {void* dlid; } ;
struct TYPE_13__ {TYPE_5__ eth; TYPE_2__ ib; } ;
struct mlx4_ib_ah {struct ib_ah ibah; TYPE_6__ av; } ;
struct TYPE_8__ {int stat_rate_support; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct in6_addr {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_gid_attr {scalar_t__ ndev; } ;
struct TYPE_10__ {int /*<<< orphan*/  raw; } ;
struct TYPE_11__ {TYPE_3__ dgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; } ;
struct ib_ah_attr {int port_num; int sl; int static_rate; TYPE_4__ grh; int /*<<< orphan*/  dmac; } ;
typedef  int /*<<< orphan*/  in6 ;
struct TYPE_14__ {int pdn; } ;

/* Variables and functions */
 struct ib_ah* FUNC0 (int) ; 
 int ETH_ALEN ; 
 int IB_RATE_2_5_GBPS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int MLX4_STAT_RATE_OFFSET ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,union ib_gid*,struct ib_gid_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct in6_addr*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC10 (struct in6_addr*) ; 
 int FUNC11 (scalar_t__) ; 
 struct mlx4_ib_dev* FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC13 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_ah *FUNC14(struct ib_pd *pd, struct ib_ah_attr *ah_attr,
				    struct mlx4_ib_ah *ah)
{
	struct mlx4_ib_dev *ibdev = FUNC12(pd->device);
	struct mlx4_dev *dev = ibdev->dev;
	int is_mcast = 0;
	struct in6_addr in6;
	u16 vlan_tag = 0xffff;
	union ib_gid sgid;
	struct ib_gid_attr gid_attr;
	int ret;

	FUNC7(&in6, ah_attr->grh.dgid.raw, sizeof(in6));
	if (FUNC10(&in6)) {
		is_mcast = 1;
		FUNC9(&in6, ah->av.eth.mac);
	} else {
		FUNC7(ah->av.eth.mac, ah_attr->dmac, ETH_ALEN);
	}
	ret = FUNC6(pd->device, ah_attr->port_num,
				ah_attr->grh.sgid_index, &sgid, &gid_attr);
	if (ret)
		return FUNC0(ret);
	FUNC5(ah->av.eth.s_mac);
	if (gid_attr.ndev) {
		vlan_tag = FUNC11(gid_attr.ndev);
		FUNC7(ah->av.eth.s_mac, FUNC1(gid_attr.ndev), ETH_ALEN);
		FUNC4(gid_attr.ndev);
	}
	if (vlan_tag < 0x1000)
		vlan_tag |= (ah_attr->sl & 7) << 13;
	ah->av.eth.port_pd = FUNC3(FUNC13(pd)->pdn | (ah_attr->port_num << 24));
	ret = FUNC8(ibdev, ah_attr->port_num, ah_attr->grh.sgid_index);
	if (ret < 0)
		return FUNC0(ret);
	ah->av.eth.gid_index = ret;
	ah->av.eth.vlan = FUNC2(vlan_tag);
	ah->av.eth.hop_limit = ah_attr->grh.hop_limit;
	if (ah_attr->static_rate) {
		ah->av.eth.stat_rate = ah_attr->static_rate + MLX4_STAT_RATE_OFFSET;
		while (ah->av.eth.stat_rate > IB_RATE_2_5_GBPS + MLX4_STAT_RATE_OFFSET &&
		       !(1 << ah->av.eth.stat_rate & dev->caps.stat_rate_support))
			--ah->av.eth.stat_rate;
	}

	/*
	 * HW requires multicast LID so we just choose one.
	 */
	if (is_mcast)
		ah->av.ib.dlid = FUNC2(0xc000);

	FUNC7(ah->av.eth.dgid, ah_attr->grh.dgid.raw, 16);
	ah->av.eth.sl_tclass_flowlabel = FUNC3(ah_attr->sl << 29);

	return &ah->ibah;
}