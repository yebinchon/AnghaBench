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
struct mem_range_desc {int dummy; } ;
struct TYPE_2__ {int mr_ndesc; int /*<<< orphan*/  mr_desc; int /*<<< orphan*/ * mr_op; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mem_range_desc*,int) ; 
 TYPE_1__ mem_range_softc ; 
 int /*<<< orphan*/  mr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct mem_range_desc *mrd, int *arg)
{
	int nd;

	if (mem_range_softc.mr_op == NULL)
		return (EOPNOTSUPP);
	nd = *arg;
	FUNC1(&mr_lock);
	if (nd == 0)
		*arg = mem_range_softc.mr_ndesc;
	else
		FUNC0(mem_range_softc.mr_desc, mrd, nd * sizeof(*mrd));
	FUNC2(&mr_lock);
	return (0);
}