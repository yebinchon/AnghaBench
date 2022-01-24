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
typedef  size_t u_int32_t ;
struct CommandControlBlock {int dummy; } ;
struct AdapterControlBlock {size_t workingsrb_doneindex; size_t workingsrb_startindex; int /*<<< orphan*/  srb_lock; struct CommandControlBlock** srbworkingQ; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t ARCMSR_MAX_FREESRB_NUM ; 

__attribute__((used)) static struct CommandControlBlock *FUNC2(struct AdapterControlBlock *acb)
{
	struct CommandControlBlock *srb = NULL;
	u_int32_t workingsrb_startindex, workingsrb_doneindex;

	FUNC0(&acb->srb_lock);
	workingsrb_doneindex = acb->workingsrb_doneindex;
	workingsrb_startindex = acb->workingsrb_startindex;
	srb = acb->srbworkingQ[workingsrb_startindex];
	workingsrb_startindex++;
	workingsrb_startindex %= ARCMSR_MAX_FREESRB_NUM;
	if(workingsrb_doneindex != workingsrb_startindex) {
		acb->workingsrb_startindex = workingsrb_startindex;
	} else {
		srb = NULL;
	}
	FUNC1(&acb->srb_lock);
	return(srb);
}