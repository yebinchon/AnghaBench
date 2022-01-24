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
typedef  int u32 ;
struct mthca_alloc {int max; int top; int mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  last; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mthca_alloc *alloc, u32 obj)
{
	unsigned long flags;

	obj &= alloc->max - 1;

	FUNC2(&alloc->lock, flags);

	FUNC0(obj, alloc->table);
	alloc->last = FUNC1(alloc->last, obj);
	alloc->top = (alloc->top + alloc->max) & alloc->mask;

	FUNC3(&alloc->lock, flags);
}