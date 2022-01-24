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
struct l2t_data {int l2t_size; int /*<<< orphan*/  lock; TYPE_1__* l2tab; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  FUNC0 (struct l2t_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct l2t_data *d)
{
	int i;

	for (i = 0; i < d->l2t_size; i++)
		FUNC1(&d->l2tab[i].lock);
	FUNC2(&d->lock);
	FUNC0(d, M_CXGBE);

	return (0);
}