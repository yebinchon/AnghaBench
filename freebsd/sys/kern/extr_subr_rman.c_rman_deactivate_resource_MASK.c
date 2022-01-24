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
struct rman {int /*<<< orphan*/  rm_mtx; } ;
struct resource {TYPE_1__* __r_i; } ;
struct TYPE_2__ {int /*<<< orphan*/  r_flags; struct rman* r_rm; } ;

/* Variables and functions */
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct resource *r)
{
	struct rman *rm;

	rm = r->__r_i->r_rm;
	FUNC0(rm->rm_mtx);
	r->__r_i->r_flags &= ~RF_ACTIVE;
	FUNC1(rm->rm_mtx);
	return 0;
}