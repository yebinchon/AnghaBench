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
typedef  int /*<<< orphan*/  uint64_t ;
struct ttm_mem_shrink {int (* do_shrink ) (struct ttm_mem_shrink*) ;} ;
struct ttm_mem_global {int /*<<< orphan*/  lock; struct ttm_mem_shrink* shrink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ttm_mem_shrink*) ; 
 scalar_t__ FUNC3 (struct ttm_mem_global*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ttm_mem_global *glob, bool from_wq,
		       uint64_t extra)
{
	int ret;
	struct ttm_mem_shrink *shrink;

	FUNC0(&glob->lock);
	if (glob->shrink == NULL)
		goto out;

	while (FUNC3(glob, from_wq, extra)) {
		shrink = glob->shrink;
		FUNC1(&glob->lock);
		ret = shrink->do_shrink(shrink);
		FUNC0(&glob->lock);
		if (FUNC4(ret != 0))
			goto out;
	}
out:
	FUNC1(&glob->lock);
}