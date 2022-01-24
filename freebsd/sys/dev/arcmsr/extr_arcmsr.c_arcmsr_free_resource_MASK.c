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
struct AdapterControlBlock {int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  dm_segs_dmat; int /*<<< orphan*/  srb_dmat; int /*<<< orphan*/  srb_dmamap; int /*<<< orphan*/ * ioctl_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct AdapterControlBlock *acb)
{
	/* remove the control device */
	if(acb->ioctl_dev != NULL) {
		FUNC3(acb->ioctl_dev);
	}
	FUNC2(acb->srb_dmat, acb->srb_dmamap);
	FUNC1(acb->srb_dmat, acb->srb_dmamap);
	FUNC0(acb->srb_dmat);
	FUNC0(acb->dm_segs_dmat);
	FUNC0(acb->parent_dmat);
}