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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_zone_entry {struct mlx4_bitmap* bitmap; } ;
struct mlx4_zone_allocator {int /*<<< orphan*/  lock; } ;
struct mlx4_bitmap {int dummy; } ;

/* Variables and functions */
 struct mlx4_zone_entry* FUNC0 (struct mlx4_zone_allocator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct mlx4_bitmap *FUNC3(struct mlx4_zone_allocator *zones, u32 uid)
{
	struct mlx4_zone_entry *zone;
	struct mlx4_bitmap *bitmap;

	FUNC1(&zones->lock);

	zone = FUNC0(zones, uid);

	bitmap = zone == NULL ? NULL : zone->bitmap;

	FUNC2(&zones->lock);

	return bitmap;
}