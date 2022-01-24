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
typedef  int /*<<< orphan*/  u_int ;
struct nexus_device {int /*<<< orphan*/  nx_resources; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NEXUSDEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nexus_device*) ; 
 struct nexus_device* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t bus, u_int order, const char *name, int unit)
{
	device_t	child;
	struct nexus_device *ndev;

	ndev = FUNC3(sizeof(struct nexus_device), M_NEXUSDEV, M_NOWAIT|M_ZERO);
	if (!ndev)
		return (0);
	FUNC4(&ndev->nx_resources);

	child = FUNC0(bus, order, name, unit);
	if (child == NULL) {
		FUNC1(bus, "failed to add child: %s%d\n", name, unit);
		return (0);
	}

	/* should we free this in nexus_child_detached? */
	FUNC2(child, ndev);

	return (child);
}