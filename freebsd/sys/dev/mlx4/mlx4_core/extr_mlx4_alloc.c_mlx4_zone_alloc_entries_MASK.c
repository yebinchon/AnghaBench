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
typedef  int u32 ;
struct mlx4_zone_entry {int dummy; } ;
struct mlx4_zone_allocator {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct mlx4_zone_entry*,int,int,int,int*) ; 
 struct mlx4_zone_entry* FUNC1 (struct mlx4_zone_allocator*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u32 FUNC4(struct mlx4_zone_allocator *zones, u32 uid, int count,
			    int align, u32 skip_mask, u32 *puid)
{
	struct mlx4_zone_entry *zone;
	int res = -1;

	FUNC2(&zones->lock);

	zone = FUNC1(zones, uid);

	if (NULL == zone)
		goto out;

	res = FUNC0(zone, count, align, skip_mask, puid);

out:
	FUNC3(&zones->lock);

	return res;
}