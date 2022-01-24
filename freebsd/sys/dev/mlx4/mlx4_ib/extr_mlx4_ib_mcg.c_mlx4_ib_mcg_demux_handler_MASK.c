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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {struct mlx4_ib_demux_ctx* demux; } ;
struct mlx4_ib_dev {TYPE_1__ sriov; } ;
struct mlx4_ib_demux_ctx {int /*<<< orphan*/  mcg_wq; int /*<<< orphan*/  mcg_table_lock; } ;
struct TYPE_4__ {int method; int /*<<< orphan*/  tid; } ;
struct ib_sa_mad {TYPE_2__ mad_hdr; scalar_t__ data; } ;
struct mcast_group {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  work; int /*<<< orphan*/  state; int /*<<< orphan*/  prev_state; struct ib_sa_mad response_sa_mad; } ;
struct ib_sa_mcmember_data {int /*<<< orphan*/  mgid; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IB_MGMT_METHOD_GET_RESP 133 
#define  IB_MGMT_METHOD_SET 132 
#define  IB_SA_METHOD_DELETE 131 
#define  IB_SA_METHOD_DELETE_RESP 130 
#define  IB_SA_METHOD_GET_TABLE 129 
#define  IB_SA_METHOD_GET_TABLE_RESP 128 
 int /*<<< orphan*/  FUNC0 (struct mcast_group*) ; 
 int /*<<< orphan*/  MCAST_RESP_READY ; 
 struct mcast_group* FUNC1 (struct mlx4_ib_demux_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mcast_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mcast_group* FUNC9 (struct mlx4_ib_demux_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC10 (struct ib_device*) ; 

int FUNC11(struct ib_device *ibdev, int port, int slave,
			      struct ib_sa_mad *mad)
{
	struct mlx4_ib_dev *dev = FUNC10(ibdev);
	struct ib_sa_mcmember_data *rec = (struct ib_sa_mcmember_data *)mad->data;
	struct mlx4_ib_demux_ctx *ctx = &dev->sriov.demux[port - 1];
	struct mcast_group *group;

	switch (mad->mad_hdr.method) {
	case IB_MGMT_METHOD_GET_RESP:
	case IB_SA_METHOD_DELETE_RESP:
		FUNC4(&ctx->mcg_table_lock);
		group = FUNC1(ctx, &rec->mgid, 0, GFP_KERNEL);
		FUNC5(&ctx->mcg_table_lock);
		if (FUNC0(group)) {
			if (mad->mad_hdr.method == IB_MGMT_METHOD_GET_RESP) {
				__be64 tid = mad->mad_hdr.tid;
				*(u8 *)(&tid) = (u8)slave; /* in group we kept the modified TID */
				group = FUNC9(ctx, tid, &rec->mgid);
			} else
				group = NULL;
		}

		if (!group)
			return 1;

		FUNC4(&group->lock);
		group->response_sa_mad = *mad;
		group->prev_state = group->state;
		group->state = MCAST_RESP_READY;
		/* calls mlx4_ib_mcg_work_handler */
		FUNC2(&group->refcount);
		if (!FUNC6(ctx->mcg_wq, &group->work))
			FUNC8(&group->refcount);
		FUNC5(&group->lock);
		FUNC7(group, 0);
		return 1; /* consumed */
	case IB_MGMT_METHOD_SET:
	case IB_SA_METHOD_GET_TABLE:
	case IB_SA_METHOD_GET_TABLE_RESP:
	case IB_SA_METHOD_DELETE:
		return 0; /* not consumed, pass-through to guest over tunnel */
	default:
		FUNC3("In demux, port %d: unexpected MCMember method: 0x%x, dropping\n",
			port, mad->mad_hdr.method);
		return 1; /* consumed */
	}
}