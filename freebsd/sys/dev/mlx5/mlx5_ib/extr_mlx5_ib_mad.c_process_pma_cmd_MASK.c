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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_pma_portcounters_ext {int dummy; } ;
struct ib_pma_portcounters {int dummy; } ;
struct TYPE_2__ {scalar_t__ attr_id; } ;
struct ib_mad {scalar_t__ data; TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;
struct ib_class_port_info {int /*<<< orphan*/  capability_mask; } ;
typedef  int /*<<< orphan*/  cpi ;

/* Variables and functions */
 int IB_MAD_RESULT_FAILURE ; 
 int IB_MAD_RESULT_REPLY ; 
 int IB_MAD_RESULT_SUCCESS ; 
 int /*<<< orphan*/  IB_PMA_CLASS_CAP_EXT_WIDTH ; 
 scalar_t__ IB_PMA_CLASS_PORT_INFO ; 
 scalar_t__ IB_PMA_PORT_COUNTERS_EXT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ib_class_port_info*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_pma_portcounters*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_pma_portcounters_ext*,void*) ; 
 int /*<<< orphan*/  ppcnt_reg ; 
 int /*<<< orphan*/  query_vport_counter_out ; 
 struct mlx5_ib_dev* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static int FUNC9(struct ib_device *ibdev, u8 port_num,
			   const struct ib_mad *in_mad, struct ib_mad *out_mad)
{
	struct mlx5_ib_dev *dev = FUNC8(ibdev);
	int err;
	void *out_cnt;

	/* Decalring support of extended counters */
	if (in_mad->mad_hdr.attr_id == IB_PMA_CLASS_PORT_INFO) {
		struct ib_class_port_info cpi = {};

		cpi.capability_mask = IB_PMA_CLASS_CAP_EXT_WIDTH;
		FUNC2((out_mad->data + 40), &cpi, sizeof(cpi));
		return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
	}

	if (in_mad->mad_hdr.attr_id == IB_PMA_PORT_COUNTERS_EXT) {
		struct ib_pma_portcounters_ext *pma_cnt_ext =
			(struct ib_pma_portcounters_ext *)(out_mad->data + 40);
		int sz = FUNC0(query_vport_counter_out);

		out_cnt = FUNC5(sz);
		if (!out_cnt)
			return IB_MAD_RESULT_FAILURE;

		err = FUNC4(dev->mdev, 0, 0,
						    port_num, out_cnt, sz);
		if (!err)
			FUNC7(pma_cnt_ext, out_cnt);
	} else {
		struct ib_pma_portcounters *pma_cnt =
			(struct ib_pma_portcounters *)(out_mad->data + 40);
		int sz = FUNC0(ppcnt_reg);

		out_cnt = FUNC5(sz);
		if (!out_cnt)
			return IB_MAD_RESULT_FAILURE;

		err = FUNC3(dev->mdev, port_num,
					       out_cnt, sz);
		if (!err)
			FUNC6(pma_cnt, out_cnt);
		}

	FUNC1(out_cnt);
	if (err)
		return IB_MAD_RESULT_FAILURE;

	return IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_REPLY;
}