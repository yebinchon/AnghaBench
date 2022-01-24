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
struct i40e_spinlock {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 

void
FUNC1(struct i40e_spinlock *lock)
{
	FUNC0(&lock->mutex, "mutex",
	    "ixl spinlock", MTX_DEF | MTX_DUPOK);
}