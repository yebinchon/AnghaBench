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
typedef  int u32 ;
struct TYPE_4__ {int stat_rate_sl; int /*<<< orphan*/  rlid; int /*<<< orphan*/  tclass; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  rgid; int /*<<< orphan*/  grh_gid_fl; } ;
struct mlx5_ib_ah {TYPE_2__ av; } ;
struct TYPE_3__ {int sgid_index; int flow_label; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  dgid; } ;
struct ib_ah_attr {int static_rate; int sl; int /*<<< orphan*/  dlid; TYPE_1__ grh; int /*<<< orphan*/  ah_flags; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_AH_GRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 struct mlx5_ib_ah* FUNC4 (struct ib_ah*) ; 

int FUNC5(struct ib_ah *ibah, struct ib_ah_attr *ah_attr)
{
	struct mlx5_ib_ah *ah = FUNC4(ibah);
	u32 tmp;

	FUNC3(ah_attr, 0, sizeof(*ah_attr));

	tmp = FUNC1(ah->av.grh_gid_fl);
	if (tmp & (1 << 30)) {
		ah_attr->ah_flags = IB_AH_GRH;
		ah_attr->grh.sgid_index = (tmp >> 20) & 0xff;
		ah_attr->grh.flow_label = tmp & 0xfffff;
		FUNC2(&ah_attr->grh.dgid, ah->av.rgid, 16);
		ah_attr->grh.hop_limit = ah->av.hop_limit;
		ah_attr->grh.traffic_class = ah->av.tclass;
	}
	ah_attr->dlid = FUNC0(ah->av.rlid);
	ah_attr->static_rate = ah->av.stat_rate_sl >> 4;
	ah_attr->sl = ah->av.stat_rate_sl & 0xf;

	return 0;
}