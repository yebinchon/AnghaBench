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
struct ttm_mem_zone {scalar_t__ used_mem; scalar_t__ swap_limit; } ;
struct ttm_mem_global {unsigned int num_zones; int /*<<< orphan*/  work; int /*<<< orphan*/  swap_queue; int /*<<< orphan*/  lock; struct ttm_mem_zone** zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ttm_mem_global *glob)
{
	bool needs_swapping = false;
	unsigned int i;
	struct ttm_mem_zone *zone;

	FUNC0(&glob->lock);
	for (i = 0; i < glob->num_zones; ++i) {
		zone = glob->zones[i];
		if (zone->used_mem > zone->swap_limit) {
			needs_swapping = true;
			break;
		}
	}

	FUNC1(&glob->lock);

	if (FUNC3(needs_swapping))
		FUNC2(glob->swap_queue, &glob->work);

}