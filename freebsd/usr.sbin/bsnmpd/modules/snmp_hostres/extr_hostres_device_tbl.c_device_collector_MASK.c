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
typedef  void* u_int ;
struct devinfo_dev {char* dd_name; char* dd_location; int /*<<< orphan*/  dd_drivername; int /*<<< orphan*/  dd_desc; scalar_t__ dd_parent; scalar_t__ dd_handle; } ;
struct device_entry {void* status; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  HR_DEVICE_FOUND ; 
 struct device_entry* FUNC1 (struct devinfo_dev*) ; 
 struct device_entry* FUNC2 (struct devinfo_dev*) ; 
 scalar_t__ FUNC3 (struct devinfo_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct devinfo_dev*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct devinfo_dev*,int (*) (struct devinfo_dev*,void*),void*) ; 

__attribute__((used)) static int
FUNC6(struct devinfo_dev *dev, void *arg)
{
	struct device_entry *entry;

	FUNC0("%llu/%llu name='%s' desc='%s' drivername='%s' location='%s'",
	    (unsigned long long)dev->dd_handle,
	    (unsigned long long)dev->dd_parent, dev->dd_name, dev->dd_desc,
	    dev->dd_drivername, dev->dd_location);

	if (dev->dd_name[0] != '\0' || dev->dd_location[0] != '\0') {
		FUNC0("ANALYZING dev %s at %s",
		    dev->dd_name, dev->dd_location);

		if ((entry = FUNC2(dev)) != NULL) {
			entry->flags |= HR_DEVICE_FOUND;
			entry->status = (u_int)FUNC3(dev);
		} else if ((entry = FUNC1(dev)) != NULL) {
			FUNC4(dev, &entry->type);

			entry->flags |= HR_DEVICE_FOUND;
			entry->status = (u_int)FUNC3(dev);
		}
	} else {
		FUNC0("SKIPPED unknown device at location '%s'",
		    dev->dd_location );
	}

	return (FUNC5(dev, device_collector, arg));
}