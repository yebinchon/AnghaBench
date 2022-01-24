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
struct isa_device {int /*<<< orphan*/  id_order; int /*<<< orphan*/  id_configs; int /*<<< orphan*/  id_resources; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_ISADEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct isa_device*) ; 
 struct isa_device* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t dev, u_int order, const char *name, int unit)
{
	device_t child;
	struct	isa_device *idev;

	child = FUNC1(dev, order, name, unit);
	if (child == NULL) 
		return (child);
	
	idev = FUNC3(sizeof(struct isa_device), M_ISADEV, M_NOWAIT | M_ZERO);
	if (!idev)
		return (0);

	FUNC4(&idev->id_resources);
	FUNC0(&idev->id_configs);
	idev->id_order = order;

	FUNC2(child, idev);

	return (child);
}