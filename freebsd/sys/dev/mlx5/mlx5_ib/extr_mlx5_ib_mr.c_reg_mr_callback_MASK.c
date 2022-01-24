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
struct mlx5_mr_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx5_mr_cache {scalar_t__ last_add; struct mlx5_cache_ent* ent; } ;
struct TYPE_6__ {int key; } ;
struct mlx5_ib_mr {TYPE_3__ mmkey; int /*<<< orphan*/  list; int /*<<< orphan*/  out; int /*<<< orphan*/  order; struct mlx5_ib_dev* dev; } ;
struct mlx5_ib_dev {int fill_delay; TYPE_2__* mdev; int /*<<< orphan*/  delay_timer; struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int /*<<< orphan*/  lock; int /*<<< orphan*/  size; int /*<<< orphan*/  cur; int /*<<< orphan*/  head; int /*<<< orphan*/  pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  mkey_lock; int /*<<< orphan*/  mkey_key; struct mlx5_mr_table mr_table; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  create_mkey_out ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mkey_index ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(int status, void *context)
{
	struct mlx5_ib_mr *mr = context;
	struct mlx5_ib_dev *dev = mr->dev;
	struct mlx5_mr_cache *cache = &dev->cache;
	int c = FUNC7(dev, mr->order);
	struct mlx5_cache_ent *ent = &cache->ent[c];
	u8 key;
	unsigned long flags;
	struct mlx5_mr_table *table = &dev->mdev->priv.mr_table;
	int err;

	FUNC10(&ent->lock, flags);
	ent->pending--;
	FUNC11(&ent->lock, flags);
	if (status) {
		FUNC3(dev, "async reg mr failed. status %d\n", status);
		FUNC1(mr);
		dev->fill_delay = 1;
		FUNC6(&dev->delay_timer, jiffies + HZ);
		return;
	}

	FUNC10(&dev->mdev->priv.mkey_lock, flags);
	key = dev->mdev->priv.mkey_key++;
	FUNC11(&dev->mdev->priv.mkey_lock, flags);
	mr->mmkey.key = FUNC4(FUNC0(create_mkey_out, mr->out, mkey_index)) | key;

	cache->last_add = jiffies;

	FUNC10(&ent->lock, flags);
	FUNC2(&mr->list, &ent->head);
	ent->cur++;
	ent->size++;
	FUNC11(&ent->lock, flags);

	FUNC10(&table->lock, flags);
	err = FUNC9(&table->tree, FUNC5(mr->mmkey.key),
				&mr->mmkey);
	if (err)
		FUNC8("Error inserting to mkey tree. 0x%x\n", -err);
	FUNC11(&table->lock, flags);
}