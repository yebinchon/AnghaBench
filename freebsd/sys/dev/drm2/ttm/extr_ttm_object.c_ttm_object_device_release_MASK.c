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
struct ttm_object_device {int /*<<< orphan*/  object_lock; int /*<<< orphan*/  object_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TTM_OBJ_DEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_object_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ttm_object_device **p_tdev)
{
	struct ttm_object_device *tdev = *p_tdev;

	*p_tdev = NULL;

	FUNC2(&tdev->object_lock);
	FUNC0(&tdev->object_hash);
	FUNC3(&tdev->object_lock);

	FUNC1(tdev, M_TTM_OBJ_DEV);
}