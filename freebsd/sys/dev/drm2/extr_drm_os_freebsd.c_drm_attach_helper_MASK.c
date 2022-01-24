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
struct drm_driver {int dummy; } ;
struct drm_device {int /*<<< orphan*/  id_entry; } ;
typedef  int /*<<< orphan*/  drm_pci_id_list_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct drm_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct drm_device*,struct drm_driver*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t kdev, const drm_pci_id_list_t *idlist,
    struct drm_driver *driver)
{
	struct drm_device *dev;
	int vendor, device;
	int ret;

	dev = FUNC0(kdev);

	vendor = FUNC4(kdev);
	device = FUNC3(kdev);
	dev->id_entry = FUNC1(vendor, device, idlist);

	ret = FUNC2(kdev, dev, driver);

	return (ret);
}