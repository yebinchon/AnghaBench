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
struct bufobj {scalar_t__ bo_numoutput; int bo_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int BO_WWAIT ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 

void
FUNC4(struct bufobj *bo)
{

	FUNC2(bo != NULL, ("NULL bo in bufobj_wdrop"));
	FUNC0(bo);
	FUNC2(bo->bo_numoutput > 0, ("bufobj_wdrop non-positive count"));
	if ((--bo->bo_numoutput == 0) && (bo->bo_flag & BO_WWAIT)) {
		bo->bo_flag &= ~BO_WWAIT;
		FUNC3(&bo->bo_numoutput);
	}
	FUNC1(bo);
}