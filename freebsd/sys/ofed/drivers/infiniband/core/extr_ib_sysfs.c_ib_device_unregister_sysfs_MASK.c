#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct ib_device {TYPE_1__ dev; int /*<<< orphan*/  hw_stats_ag; scalar_t__ hw_stats; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 int /*<<< orphan*/ * ib_class_attributes ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ib_device *device)
{
	int i;

	/* Hold kobject until ib_dealloc_device() */
	FUNC6(&device->dev.kobj);

	FUNC4(device);

	if (device->hw_stats) {
		FUNC5(device->hw_stats);
		FUNC3(&device->dev.kobj, device->hw_stats_ag);
	}

	for (i = 0; i < FUNC0(ib_class_attributes); ++i)
		FUNC1(&device->dev, ib_class_attributes[i]);

	FUNC2(&device->dev);
}