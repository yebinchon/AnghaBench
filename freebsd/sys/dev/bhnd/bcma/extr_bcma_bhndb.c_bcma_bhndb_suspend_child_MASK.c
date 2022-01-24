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
struct bcma_devinfo {TYPE_1__* res_agent; } ;
typedef  scalar_t__ device_t ;
struct TYPE_2__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int EBUSY ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 struct bcma_devinfo* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(device_t dev, device_t child)
{
	struct bcma_devinfo	*dinfo;
	int			 error;

	if (FUNC4(child) != dev)
		FUNC1(FUNC4(dev), child);
	
	if (FUNC5(child))
		return (EBUSY);

	dinfo = FUNC3(child);

	/* Suspend the child */
	if ((error = FUNC2(dev, child)))
		return (error);

	/* Suspend child's agent resource  */
	if (dinfo->res_agent != NULL)
		FUNC0(FUNC4(dev), dev,
		    SYS_RES_MEMORY, dinfo->res_agent->res);
	
	return (0);
}