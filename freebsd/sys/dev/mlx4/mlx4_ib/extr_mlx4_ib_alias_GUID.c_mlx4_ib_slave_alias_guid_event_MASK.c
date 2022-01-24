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
struct TYPE_7__ {int /*<<< orphan*/  ag_work_lock; TYPE_2__* ports_guid; } ;
struct TYPE_8__ {TYPE_3__ alias_guid; } ;
struct mlx4_ib_dev {TYPE_4__ sriov; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_6__ {int state_flags; TYPE_1__* all_rec_per_port; } ;
struct TYPE_5__ {scalar_t__* guids_retry_schedule; scalar_t__ time_to_run; int /*<<< orphan*/  status; int /*<<< orphan*/  guid_indexes; int /*<<< orphan*/ * all_recs; } ;

/* Variables and functions */
 int GUID_REC_SIZE ; 
 int GUID_STATE_NEED_PORT_INIT ; 
 int /*<<< orphan*/  MLX4_GUID_FOR_DELETE_VAL ; 
 int /*<<< orphan*/  MLX4_GUID_INFO_STATUS_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct mlx4_ib_dev *dev, int slave,
				    int port,  int slave_init)
{
	__be64 curr_guid, required_guid;
	int record_num = slave / 8;
	int index = slave % 8;
	int port_index = port - 1;
	unsigned long flags;
	int do_work = 0;

	FUNC4(&dev->sriov.alias_guid.ag_work_lock, flags);
	if (dev->sriov.alias_guid.ports_guid[port_index].state_flags &
	    GUID_STATE_NEED_PORT_INIT)
		goto unlock;
	if (!slave_init) {
		curr_guid = *(__be64 *)&dev->sriov.
			alias_guid.ports_guid[port_index].
			all_rec_per_port[record_num].
			all_recs[GUID_REC_SIZE * index];
		if (curr_guid == FUNC0(MLX4_GUID_FOR_DELETE_VAL) ||
		    !curr_guid)
			goto unlock;
		required_guid = FUNC0(MLX4_GUID_FOR_DELETE_VAL);
	} else {
		required_guid = FUNC1(dev->dev, slave, port);
		if (required_guid == FUNC0(MLX4_GUID_FOR_DELETE_VAL))
			goto unlock;
	}
	*(__be64 *)&dev->sriov.alias_guid.ports_guid[port_index].
		all_rec_per_port[record_num].
		all_recs[GUID_REC_SIZE * index] = required_guid;
	dev->sriov.alias_guid.ports_guid[port_index].
		all_rec_per_port[record_num].guid_indexes
		|= FUNC2(index);
	dev->sriov.alias_guid.ports_guid[port_index].
		all_rec_per_port[record_num].status
		= MLX4_GUID_INFO_STATUS_IDLE;
	/* set to run immediately */
	dev->sriov.alias_guid.ports_guid[port_index].
		all_rec_per_port[record_num].time_to_run = 0;
	dev->sriov.alias_guid.ports_guid[port_index].
		all_rec_per_port[record_num].
		guids_retry_schedule[index] = 0;
	do_work = 1;
unlock:
	FUNC5(&dev->sriov.alias_guid.ag_work_lock, flags);

	if (do_work)
		FUNC3(dev, port_index);
}