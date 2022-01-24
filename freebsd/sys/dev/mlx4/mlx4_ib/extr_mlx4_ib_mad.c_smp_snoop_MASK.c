#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union sl2vl_tbl_to_u64 {void** sl8; int /*<<< orphan*/  sl64; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  void* u16 ;
struct TYPE_10__ {int /*<<< orphan*/  is_going_down; } ;
struct TYPE_9__ {void*** phys_pkey_cache; } ;
struct mlx4_ib_dev {int /*<<< orphan*/ * sl2vl; TYPE_5__* dev; TYPE_3__ sriov; TYPE_2__ pkeys; } ;
struct ib_smp {void** data; int /*<<< orphan*/  attr_mod; } ;
struct ib_port_info {int neighbormtu_mastersmsl; int clientrereg_resv_subnetto; int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  lid; } ;
struct TYPE_8__ {scalar_t__ mgmt_class; scalar_t__ method; int attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_11__ {int flags; int flags2; } ;
struct TYPE_12__ {TYPE_4__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_GID_CHANGE ; 
 int /*<<< orphan*/  IB_EVENT_PKEY_CHANGE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 scalar_t__ IB_MGMT_METHOD_SET ; 
#define  IB_SMP_ATTR_GUID_INFO 131 
#define  IB_SMP_ATTR_PKEY_TABLE 130 
#define  IB_SMP_ATTR_PORT_INFO 129 
#define  IB_SMP_ATTR_SL_TO_VL_TABLE 128 
 int MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT ; 
 int MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,void*,...) ; 
 struct mlx4_ib_dev* FUNC13 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_ib_dev*,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void FUNC15(struct ib_device *ibdev, u8 port_num, const struct ib_mad *mad,
		      u16 prev_lid)
{
	struct ib_port_info *pinfo;
	u16 lid;
	__be16 *base;
	u32 bn, pkey_change_bitmap;
	int i;


	struct mlx4_ib_dev *dev = FUNC13(ibdev);
	if ((mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_LID_ROUTED ||
	     mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) &&
	    mad->mad_hdr.method == IB_MGMT_METHOD_SET)
		switch (mad->mad_hdr.attr_id) {
		case IB_SMP_ATTR_PORT_INFO:
			if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
				return;
			pinfo = (struct ib_port_info *) ((struct ib_smp *) mad)->data;
			lid = FUNC2(pinfo->lid);

			FUNC14(dev, port_num,
				     FUNC2(pinfo->sm_lid),
				     pinfo->neighbormtu_mastersmsl & 0xf);

			if (pinfo->clientrereg_resv_subnetto & 0x80)
				FUNC4(dev, port_num);

			if (prev_lid != lid)
				FUNC5(dev, port_num);
			break;

		case IB_SMP_ATTR_PKEY_TABLE:
			if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
				return;
			if (!FUNC10(dev->dev)) {
				FUNC6(dev, port_num,
						       IB_EVENT_PKEY_CHANGE);
				break;
			}

			/* at this point, we are running in the master.
			 * Slaves do not receive SMPs.
			 */
			bn  = FUNC3(((struct ib_smp *)mad)->attr_mod) & 0xFFFF;
			base = (__be16 *) &(((struct ib_smp *)mad)->data[0]);
			pkey_change_bitmap = 0;
			for (i = 0; i < 32; i++) {
				FUNC12("PKEY[%d] = x%x\n",
					 i + bn*32, FUNC2(base[i]));
				if (FUNC2(base[i]) !=
				    dev->pkeys.phys_pkey_cache[port_num - 1][i + bn*32]) {
					pkey_change_bitmap |= (1 << i);
					dev->pkeys.phys_pkey_cache[port_num - 1][i + bn*32] =
						FUNC2(base[i]);
				}
			}
			FUNC12("PKEY Change event: port=%d, "
				 "block=0x%x, change_bitmap=0x%x\n",
				 port_num, bn, pkey_change_bitmap);

			if (pkey_change_bitmap) {
				FUNC6(dev, port_num,
						       IB_EVENT_PKEY_CHANGE);
				if (!dev->sriov.is_going_down)
					FUNC0(dev, port_num, bn,
							    pkey_change_bitmap);
			}
			break;

		case IB_SMP_ATTR_GUID_INFO:
			if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV)
				return;
			/* paravirtualized master's guid is guid 0 -- does not change */
			if (!FUNC9(dev->dev))
				FUNC6(dev, port_num,
						       IB_EVENT_GID_CHANGE);
			/*if master, notify relevant slaves*/
			if (FUNC9(dev->dev) &&
			    !dev->sriov.is_going_down) {
				bn = FUNC3(((struct ib_smp *)mad)->attr_mod);
				FUNC8(dev, bn, port_num,
								    (u8 *)(&((struct ib_smp *)mad)->data));
				FUNC7(dev, bn, port_num,
								     (u8 *)(&((struct ib_smp *)mad)->data));
			}
			break;

		case IB_SMP_ATTR_SL_TO_VL_TABLE:
			/* cache sl to vl mapping changes for use in
			 * filling QP1 LRH VL field when sending packets
			 */
			if (dev->dev->caps.flags & MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV &&
			    dev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT)
				return;
			if (!FUNC11(dev->dev)) {
				union sl2vl_tbl_to_u64 sl2vl64;
				int jj;

				for (jj = 0; jj < 8; jj++) {
					sl2vl64.sl8[jj] = ((struct ib_smp *)mad)->data[jj];
					FUNC12("sl2vl[%d] = %02x\n", jj, sl2vl64.sl8[jj]);
				}
				FUNC1(&dev->sl2vl[port_num - 1], sl2vl64.sl64);
			}
			break;

		default:
			break;
		}
}