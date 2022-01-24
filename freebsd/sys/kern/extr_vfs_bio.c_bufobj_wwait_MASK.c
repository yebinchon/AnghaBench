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
struct bufobj {scalar_t__ bo_numoutput; int /*<<< orphan*/  bo_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int /*<<< orphan*/  BO_WWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int PRIBIO ; 
 int FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int,char*,int) ; 

int
FUNC4(struct bufobj *bo, int slpflag, int timeo)
{
	int error;

	FUNC2(bo != NULL, ("NULL bo in bufobj_wwait"));
	FUNC0(bo);
	error = 0;
	while (bo->bo_numoutput) {
		bo->bo_flag |= BO_WWAIT;
		error = FUNC3(&bo->bo_numoutput, FUNC1(bo),
		    slpflag | (PRIBIO + 1), "bo_wwait", timeo);
		if (error)
			break;
	}
	return (error);
}