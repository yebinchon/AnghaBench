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
typedef  void* u32 ;
struct mlx4_ib_sriov {int /*<<< orphan*/  id_map_lock; int /*<<< orphan*/  cm_list; int /*<<< orphan*/  pv_id_table; } ;
struct id_map_entry {int slave_id; int /*<<< orphan*/  list; void* pv_cm_id; int /*<<< orphan*/  timeout; TYPE_1__* dev; scalar_t__ scheduled_delete; void* sl_cm_id; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct id_map_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  id_map_ent_timeout ; 
 int FUNC2 (int /*<<< orphan*/ *,struct id_map_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct id_map_entry*) ; 
 struct id_map_entry* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_device*,struct id_map_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (struct ib_device*) ; 

__attribute__((used)) static struct id_map_entry *
FUNC13(struct ib_device *ibdev, int slave_id, u32 sl_cm_id)
{
	int ret;
	struct id_map_entry *ent;
	struct mlx4_ib_sriov *sriov = &FUNC12(ibdev)->sriov;

	ent = FUNC6(sizeof (struct id_map_entry), GFP_KERNEL);
	if (!ent) {
		FUNC8(ibdev, "Couldn't allocate id cache entry - out of memory\n");
		return FUNC0(-ENOMEM);
	}

	ent->sl_cm_id = sl_cm_id;
	ent->slave_id = slave_id;
	ent->scheduled_delete = 0;
	ent->dev = FUNC12(ibdev);
	FUNC1(&ent->timeout, id_map_ent_timeout);

	FUNC3(GFP_KERNEL);
	FUNC10(&FUNC12(ibdev)->sriov.id_map_lock);

	ret = FUNC2(&sriov->pv_id_table, ent, 0, 0, GFP_NOWAIT);
	if (ret >= 0) {
		ent->pv_cm_id = (u32)ret;
		FUNC9(ibdev, ent);
		FUNC7(&ent->list, &sriov->cm_list);
	}

	FUNC11(&sriov->id_map_lock);
	FUNC4();

	if (ret >= 0)
		return ent;

	/*error flow*/
	FUNC5(ent);
	FUNC8(ibdev, "No more space in the idr (err:0x%x)\n", ret);
	return FUNC0(-ENOMEM);
}