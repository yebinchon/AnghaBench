#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct TYPE_4__ {size_t num_cfg_blocks; } ;
struct siba_devinfo {TYPE_1__** cfg_res; TYPE_2__ core_id; } ;
typedef  scalar_t__ device_t ;
struct TYPE_3__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int EBUSY ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 struct siba_devinfo* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct siba_devinfo*) ; 

__attribute__((used)) static int
FUNC7(device_t dev, device_t child)
{
	struct siba_devinfo	*dinfo;
	int			 error;

	if (FUNC4(child) != dev)
		FUNC1(FUNC4(dev), child);

	if (!FUNC5(child))
		return (EBUSY);

	dinfo = FUNC3(child);

	/* Resume all resource references to the child's config registers */
	for (u_int i = 0; i < dinfo->core_id.num_cfg_blocks; i++) {
		if (dinfo->cfg_res[i] == NULL)
			continue;

		error = FUNC0(FUNC4(dev), dev,
		    SYS_RES_MEMORY, dinfo->cfg_res[i]->res);
		if (error) {
			FUNC6(dev, dinfo);
			return (error);
		}
	}

	/* Resume the child */
	if ((error = FUNC2(dev, child))) {
		FUNC6(dev, dinfo);
		return (error);
	}

	return (0);
}