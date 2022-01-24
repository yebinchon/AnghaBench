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
struct TYPE_5__ {int gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct mthca_ah {scalar_t__ type; TYPE_4__* av; } ;
struct TYPE_6__ {int /*<<< orphan*/  raw; } ;
struct TYPE_7__ {int traffic_class; int flow_label; int sgid_index; TYPE_2__ dgid; int /*<<< orphan*/  hop_limit; } ;
struct ib_ah_attr {int sl; int port_num; int src_path_bits; int ah_flags; TYPE_3__ grh; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  dlid; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;
struct TYPE_8__ {int msg_sr; int g_slid; int gid_index; int /*<<< orphan*/  dgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sl_tclass_flowlabel; int /*<<< orphan*/  port_pd; int /*<<< orphan*/  dlid; } ;

/* Variables and functions */
 int ENOSYS ; 
 int IB_AH_GRH ; 
 scalar_t__ MTHCA_AH_ON_HCA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct mthca_ah*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,int,int) ; 
 struct mthca_ah* FUNC6 (struct ib_ah*) ; 
 struct mthca_dev* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ib_ah *ibah, struct ib_ah_attr *attr)
{
	struct mthca_ah *ah   = FUNC6(ibah);
	struct mthca_dev *dev = FUNC7(ibah->device);

	/* Only implement for MAD and memfree ah for now. */
	if (ah->type == MTHCA_AH_ON_HCA)
		return -ENOSYS;

	FUNC3(attr, 0, sizeof *attr);
	attr->dlid          = FUNC0(ah->av->dlid);
	attr->sl            = FUNC1(ah->av->sl_tclass_flowlabel) >> 28;
	attr->port_num      = FUNC1(ah->av->port_pd) >> 24;
	attr->static_rate   = FUNC5(dev, ah->av->msg_sr & 0x7,
					       attr->port_num);
	attr->src_path_bits = ah->av->g_slid & 0x7F;
	attr->ah_flags      = FUNC4(ah) ? IB_AH_GRH : 0;

	if (attr->ah_flags) {
		attr->grh.traffic_class =
			FUNC1(ah->av->sl_tclass_flowlabel) >> 20;
		attr->grh.flow_label =
			FUNC1(ah->av->sl_tclass_flowlabel) & 0xfffff;
		attr->grh.hop_limit  = ah->av->hop_limit;
		attr->grh.sgid_index = ah->av->gid_index &
				       (dev->limits.gid_table_len - 1);
		FUNC2(attr->grh.dgid.raw, ah->av->dgid, 16);
	}

	return 0;
}