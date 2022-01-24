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
struct siba_devinfo {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 struct siba_devinfo* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct siba_devinfo*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child)
{
	struct siba_devinfo	*dinfo;
	int			 error;

	if (FUNC3(child) != dev)
		FUNC0(FUNC3(dev), child);

	dinfo = FUNC2(child);

	/* Suspend the child */
	if ((error = FUNC1(dev, child)))
		return (error);

	/* Suspend resource references to the child's config registers */
	FUNC4(dev, dinfo);
	
	return (0);
}