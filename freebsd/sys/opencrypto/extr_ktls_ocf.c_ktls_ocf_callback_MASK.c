#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocf_operation {int done; TYPE_1__* os; } ;
struct cryptop {struct ocf_operation* crp_opaque; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocf_operation*) ; 

__attribute__((used)) static int
FUNC3(struct cryptop *crp)
{
	struct ocf_operation *oo;

	oo = crp->crp_opaque;
	FUNC0(&oo->os->lock);
	oo->done = true;
	FUNC1(&oo->os->lock);
	FUNC2(oo);
	return (0);
}