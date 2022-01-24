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
struct cam_sim {int dummy; } ;
struct AdapterControlBlock {int /*<<< orphan*/  isr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 scalar_t__ FUNC3 (struct cam_sim*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cam_sim *psim)
{
	struct AdapterControlBlock *acb;
	int	mutex;

	acb = (struct AdapterControlBlock *)FUNC3(psim);
	mutex = FUNC4(&acb->isr_lock);
	if( mutex == 0 )
		FUNC0(&acb->isr_lock);
	FUNC2(acb);
	if( mutex == 0 )
		FUNC1(&acb->isr_lock);
}