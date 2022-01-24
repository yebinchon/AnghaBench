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
struct AdapterControlBlock {int /*<<< orphan*/  isr_lock; int /*<<< orphan*/  psim; int /*<<< orphan*/  ppath; int /*<<< orphan*/ ** sys_res_arcmsr; int /*<<< orphan*/ * rid; int /*<<< orphan*/  devmap_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(device_t dev)
{
	struct AdapterControlBlock *acb=(struct AdapterControlBlock *)FUNC10(dev);
	int i;

	FUNC7(&acb->devmap_callout);
	FUNC5(dev, acb);
	FUNC4(dev);
	FUNC2(acb);
	for(i=0; (acb->sys_res_arcmsr[i]!=NULL) && (i<2); i++) {
		FUNC6(dev, SYS_RES_MEMORY, acb->rid[i], acb->sys_res_arcmsr[i]);
	}
	FUNC0(&acb->isr_lock);
	FUNC11(AC_LOST_DEVICE, acb->ppath, NULL);
	FUNC13(acb->ppath);
	FUNC12(FUNC9(acb->psim));
	FUNC8(acb->psim, TRUE);
	FUNC1(&acb->isr_lock);
	FUNC3(acb);
	return (0);
}