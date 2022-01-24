#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_mr_cache {int /*<<< orphan*/  wq; struct mlx5_cache_ent* ent; } ;
struct mlx5_ib_mr {int /*<<< orphan*/  list; int /*<<< orphan*/  order; } ;
struct mlx5_ib_dev {struct mlx5_mr_cache cache; } ;
struct mlx5_cache_ent {int cur; int limit; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int MAX_MR_CACHE_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
	struct mlx5_mr_cache *cache = &dev->cache;
	struct mlx5_cache_ent *ent;
	int shrink = 0;
	int c;

	c = FUNC2(dev, mr->order);
	if (c < 0 || c >= MAX_MR_CACHE_ENTRIES) {
		FUNC1(dev, "order %d, cache index %d\n", mr->order, c);
		return;
	}
	ent = &cache->ent[c];
	FUNC4(&ent->lock);
	FUNC0(&mr->list, &ent->head);
	ent->cur++;
	if (ent->cur > 2 * ent->limit)
		shrink = 1;
	FUNC5(&ent->lock);

	if (shrink)
		FUNC3(cache->wq, &ent->work);
}