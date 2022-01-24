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
struct TYPE_7__ {int gid_table_len; } ;
struct mthca_dev {TYPE_2__ limits; int /*<<< orphan*/  ib_dev; } ;
struct mthca_ah {scalar_t__ type; TYPE_5__* av; } ;
struct TYPE_8__ {int /*<<< orphan*/  raw; } ;
struct TYPE_9__ {int traffic_class; int flow_label; TYPE_3__ destination_gid; int /*<<< orphan*/  source_gid; int /*<<< orphan*/  hop_limit; } ;
struct TYPE_6__ {int service_level; int /*<<< orphan*/  source_lid; int /*<<< orphan*/  destination_lid; } ;
struct ib_ud_header {TYPE_4__ grh; TYPE_1__ lrh; } ;
struct TYPE_10__ {int sl_tclass_flowlabel; int g_slid; int port_pd; int gid_index; int /*<<< orphan*/  dgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  dlid; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MTHCA_AH_ON_HCA ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct mthca_ah*) ; 

int FUNC6(struct mthca_dev *dev, struct mthca_ah *ah,
		  struct ib_ud_header *header)
{
	if (ah->type == MTHCA_AH_ON_HCA)
		return -EINVAL;

	header->lrh.service_level   = FUNC0(ah->av->sl_tclass_flowlabel) >> 28;
	header->lrh.destination_lid = ah->av->dlid;
	header->lrh.source_lid      = FUNC1(ah->av->g_slid & 0x7f);
	if (FUNC5(ah)) {
		header->grh.traffic_class =
			(FUNC0(ah->av->sl_tclass_flowlabel) >> 20) & 0xff;
		header->grh.flow_label    =
			ah->av->sl_tclass_flowlabel & FUNC2(0xfffff);
		header->grh.hop_limit     = ah->av->hop_limit;
		FUNC3(&dev->ib_dev,
				  FUNC0(ah->av->port_pd) >> 24,
				  ah->av->gid_index % dev->limits.gid_table_len,
				  &header->grh.source_gid, NULL);
		FUNC4(header->grh.destination_gid.raw,
		       ah->av->dgid, 16);
	}

	return 0;
}