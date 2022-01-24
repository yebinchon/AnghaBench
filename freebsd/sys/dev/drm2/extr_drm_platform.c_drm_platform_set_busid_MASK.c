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
struct drm_master {int unique_len; int unique_size; int /*<<< orphan*/ * unique; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, struct drm_master *master)
{
	int len, ret, id;

	master->unique_len = 13 + FUNC3(dev->driver->name);
	master->unique_size = master->unique_len;
	master->unique = FUNC1(master->unique_len + 1, DRM_MEM_DRIVER, M_NOWAIT);

	if (master->unique == NULL)
		return -ENOMEM;

	id = 0; // XXX dev->driver->id;

	/* if only a single instance of the platform device, id will be
	 * set to -1.. use 0 instead to avoid a funny looking bus-id:
	 */
	if (id == -1)
		id = 0;

	len = FUNC2(master->unique, master->unique_len,
			"platform:%s:%02d", dev->driver->name, id);

	if (len > master->unique_len) {
		FUNC0("Unique buffer overflowed\n");
		ret = -EINVAL;
		goto err;
	}

	return 0;
err:
	return ret;
}