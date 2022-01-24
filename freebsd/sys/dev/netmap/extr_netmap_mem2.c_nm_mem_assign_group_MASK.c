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
struct netmap_mem_d {int nm_grp; int lasterr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 int NM_DEBUG_MEM ; 
 int netmap_debug ; 
 scalar_t__ netmap_verbose ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct netmap_mem_d *nmd, struct device *dev)
{
	int err = 0, id;
	id = FUNC2(dev);
	if (netmap_debug & NM_DEBUG_MEM)
		FUNC4("iommu_group %d", id);

	FUNC0(nmd);

	if (nmd->nm_grp < 0)
		nmd->nm_grp = id;

	if (nmd->nm_grp != id) {
		if (netmap_verbose)
			FUNC3("iommu group mismatch: %u vs %u",
					nmd->nm_grp, id);
		nmd->lasterr = err = ENOMEM;
	}

	FUNC1(nmd);
	return err;
}