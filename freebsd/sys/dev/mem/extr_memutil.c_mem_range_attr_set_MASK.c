#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mem_range_desc {int dummy; } ;
struct TYPE_5__ {TYPE_1__* mr_op; } ;
struct TYPE_4__ {int (* set ) (TYPE_2__*,struct mem_range_desc*,int*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 TYPE_2__ mem_range_softc ; 
 int /*<<< orphan*/  mr_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,struct mem_range_desc*,int*) ; 

int
FUNC3(struct mem_range_desc *mrd, int *arg)
{
	int ret;

	if (mem_range_softc.mr_op == NULL)
		return (EOPNOTSUPP);
	FUNC0(&mr_lock);
	ret = mem_range_softc.mr_op->set(&mem_range_softc, mrd, arg);
	FUNC1(&mr_lock);
	return (ret);
}