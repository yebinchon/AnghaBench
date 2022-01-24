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
struct resource_list {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int EBUSY ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct resource_list*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

int
FUNC6(device_t dev, device_t child)
{
	struct resource_list		*rl;
	int				 error;

	if (FUNC4(child) != dev)
		FUNC1(FUNC4(dev), child);

	if (FUNC5(child))
		return (EBUSY);

	/* Suspend the child device */
	if ((error = FUNC2(dev, child)))
		return (error);

	/* Fetch the resource list. If none, there's nothing else to do */
	rl = FUNC0(FUNC4(child), child);
	if (rl == NULL)
		return (0);

	/* Suspend all child resources. */
	FUNC3(dev, rl);

	return (0);
}