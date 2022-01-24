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
struct ib_uverbs_device {int /*<<< orphan*/  disassociate_srcu; int /*<<< orphan*/  ib_dev; } ;
struct ib_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 struct ib_uverbs_device* FUNC0 (struct device*) ; 
 int FUNC1 (char*,char*,char*) ; 
 struct ib_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *device, struct device_attribute *attr,
			  char *buf)
{
	int ret = -ENODEV;
	int srcu_key;
	struct ib_uverbs_device *dev = FUNC0(device);
	struct ib_device *ib_dev;

	if (!dev)
		return -ENODEV;

	srcu_key = FUNC3(&dev->disassociate_srcu);
	ib_dev = FUNC2(dev->ib_dev, &dev->disassociate_srcu);
	if (ib_dev)
		ret = FUNC1(buf, "%s\n", ib_dev->name);
	FUNC4(&dev->disassociate_srcu, srcu_key);

	return ret;
}