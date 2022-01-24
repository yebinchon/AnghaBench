#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mlx4_sriov_alias_guid_info_rec_det {int guid_indexes; int /*<<< orphan*/  all_recs; } ;
struct mlx4_next_alias_guid_work {int port; int block_num; int /*<<< orphan*/  method; struct mlx4_sriov_alias_guid_info_rec_det rec_det; } ;
struct TYPE_5__ {int /*<<< orphan*/  ag_work_lock; TYPE_1__* ports_guid; int /*<<< orphan*/  sa_client; } ;
struct TYPE_6__ {int /*<<< orphan*/  going_down_lock; TYPE_2__ alias_guid; int /*<<< orphan*/  is_going_down; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; } ;
struct mlx4_alias_guid_work_context {int port; int block_num; int guid_indexes; scalar_t__ query_id; int /*<<< orphan*/  list; int /*<<< orphan*/  sa_query; int /*<<< orphan*/  done; int /*<<< orphan*/  method; struct mlx4_ib_dev* dev; } ;
struct list_head {int dummy; } ;
struct ib_sa_guidinfo_rec {int block_num; int /*<<< orphan*/  guid_info_list; int /*<<< orphan*/  lid; } ;
struct ib_port_attr {scalar_t__ state; int /*<<< orphan*/  lid; } ;
struct ib_device {int dummy; } ;
typedef  int ib_sa_comp_mask ;
struct TYPE_4__ {int /*<<< orphan*/  alias_guid_work; int /*<<< orphan*/  wq; struct list_head cb_list; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GUID_REC_SIZE ; 
 int HZ ; 
 scalar_t__ IB_PORT_ACTIVE ; 
 int IB_SA_GUIDINFO_REC_BLOCK_NUM ; 
 int IB_SA_GUIDINFO_REC_LID ; 
 int NUM_ALIAS_GUID_IN_REC ; 
 int FUNC0 (struct ib_device*,int,struct ib_port_attr*,int) ; 
 int /*<<< orphan*/  aliasguid_query_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ib_device*,int,struct ib_sa_guidinfo_rec*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx4_alias_guid_work_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_alias_guid_work_context*) ; 
 struct mlx4_alias_guid_work_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_sa_guidinfo_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx4_ib_dev* FUNC15 (struct ib_device*) ; 

__attribute__((used)) static int FUNC16(struct ib_device *ibdev,
			struct mlx4_next_alias_guid_work *rec)
{
	int err;
	struct mlx4_ib_dev *dev = FUNC15(ibdev);
	struct ib_sa_guidinfo_rec guid_info_rec;
	ib_sa_comp_mask comp_mask;
	struct ib_port_attr attr;
	struct mlx4_alias_guid_work_context *callback_context;
	unsigned long resched_delay, flags, flags1;
	u8 port = rec->port + 1;
	int index = rec->block_num;
	struct mlx4_sriov_alias_guid_info_rec_det *rec_det = &rec->rec_det;
	struct list_head *head =
		&dev->sriov.alias_guid.ports_guid[port - 1].cb_list;

	err = FUNC0(ibdev, port, &attr, 1);
	if (err) {
		FUNC11("mlx4_ib_query_port failed (err: %d), port: %d\n",
			 err, port);
		return err;
	}
	/*check the port was configured by the sm, otherwise no need to send */
	if (attr.state != IB_PORT_ACTIVE) {
		FUNC11("port %d not active...rescheduling\n", port);
		resched_delay = 5 * HZ;
		err = -EAGAIN;
		goto new_schedule;
	}

	callback_context = FUNC6(sizeof *callback_context, GFP_KERNEL);
	if (!callback_context) {
		err = -ENOMEM;
		resched_delay = HZ * 5;
		goto new_schedule;
	}
	callback_context->port = port;
	callback_context->dev = dev;
	callback_context->block_num = index;
	callback_context->guid_indexes = rec_det->guid_indexes;
	callback_context->method = rec->method;

	FUNC10(&guid_info_rec, 0, sizeof (struct ib_sa_guidinfo_rec));

	guid_info_rec.lid = FUNC1(attr.lid);
	guid_info_rec.block_num = index;

	FUNC9(guid_info_rec.guid_info_list, rec_det->all_recs,
	       GUID_REC_SIZE * NUM_ALIAS_GUID_IN_REC);
	comp_mask = IB_SA_GUIDINFO_REC_LID | IB_SA_GUIDINFO_REC_BLOCK_NUM |
		rec_det->guid_indexes;

	FUNC3(&callback_context->done);
	FUNC13(&dev->sriov.alias_guid.ag_work_lock, flags1);
	FUNC7(&callback_context->list, head);
	FUNC14(&dev->sriov.alias_guid.ag_work_lock, flags1);

	callback_context->query_id =
		FUNC2(dev->sriov.alias_guid.sa_client,
					  ibdev, port, &guid_info_rec,
					  comp_mask, rec->method, 1000,
					  GFP_KERNEL, aliasguid_query_handler,
					  callback_context,
					  &callback_context->sa_query);
	if (callback_context->query_id < 0) {
		FUNC11("ib_sa_guid_info_rec_query failed, query_id: "
			 "%d. will reschedule to the next 1 sec.\n",
			 callback_context->query_id);
		FUNC13(&dev->sriov.alias_guid.ag_work_lock, flags1);
		FUNC8(&callback_context->list);
		FUNC5(callback_context);
		FUNC14(&dev->sriov.alias_guid.ag_work_lock, flags1);
		resched_delay = 1 * HZ;
		err = -EAGAIN;
		goto new_schedule;
	}
	err = 0;
	goto out;

new_schedule:
	FUNC13(&dev->sriov.going_down_lock, flags);
	FUNC13(&dev->sriov.alias_guid.ag_work_lock, flags1);
	FUNC4(dev, port, index);
	if (!dev->sriov.is_going_down) {
		FUNC12(dev->sriov.alias_guid.ports_guid[port - 1].wq,
				   &dev->sriov.alias_guid.ports_guid[port - 1].alias_guid_work,
				   resched_delay);
	}
	FUNC14(&dev->sriov.alias_guid.ag_work_lock, flags1);
	FUNC14(&dev->sriov.going_down_lock, flags);

out:
	return err;
}