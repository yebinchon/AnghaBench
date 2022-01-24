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
struct sx {scalar_t__ sx_lock; scalar_t__ sx_recurse; int /*<<< orphan*/  lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SX_LOCK_DESTROYED ; 
 scalar_t__ SX_LOCK_UNLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct sx *sx)
{

	FUNC0(sx->sx_lock == SX_LOCK_UNLOCKED, ("sx lock still held"));
	FUNC0(sx->sx_recurse == 0, ("sx lock still recursed"));
	sx->sx_lock = SX_LOCK_DESTROYED;
	FUNC1(&sx->lock_object);
}