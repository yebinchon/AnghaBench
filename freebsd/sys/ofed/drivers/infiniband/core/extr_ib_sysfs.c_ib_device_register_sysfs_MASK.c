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
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct ib_device {int phys_port_cnt; scalar_t__ alloc_hw_stats; int /*<<< orphan*/  ports_parent; int /*<<< orphan*/  name; int /*<<< orphan*/  dma_device; struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int FUNC1 (struct ib_device*,int,int (*) (struct ib_device*,u8,struct kobject*)) ; 
 int FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 
 int /*<<< orphan*/ * ib_class_attributes ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct ib_device *device,
			     int (*port_callback)(struct ib_device *,
						  u8, struct kobject *))
{
	struct device *class_dev = &device->dev;
	int ret;
	int i;

	device->dev.parent = device->dma_device;
	ret = FUNC2(class_dev, "%s", device->name);
	if (ret)
		return ret;

	ret = FUNC3(class_dev);
	if (ret)
		goto err;

	for (i = 0; i < FUNC0(ib_class_attributes); ++i) {
		ret = FUNC4(class_dev, ib_class_attributes[i]);
		if (ret)
			goto err_unregister;
	}

	device->ports_parent = FUNC7("ports",
						      &class_dev->kobj);
	if (!device->ports_parent) {
		ret = -ENOMEM;
		goto err_put;
	}

	if (FUNC8(device)) {
		ret = FUNC1(device, 0, port_callback);
		if (ret)
			goto err_put;
	} else {
		for (i = 1; i <= device->phys_port_cnt; ++i) {
			ret = FUNC1(device, i, port_callback);
			if (ret)
				goto err_put;
		}
	}

	if (device->alloc_hw_stats)
		FUNC9(device, NULL, 0);

	return 0;

err_put:
	FUNC6(device);

err_unregister:
	FUNC5(class_dev);

err:
	return ret;
}