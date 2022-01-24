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
struct drm_master {int unique_len; int unique_size; int /*<<< orphan*/ * unique; } ;
struct drm_device {int pci_domain; int pci_bus; int pci_slot; int pci_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,int,int,int,int) ; 

int FUNC3(struct drm_device *dev, struct drm_master *master)
{
	int len, ret;
	master->unique_len = 40;
	master->unique_size = master->unique_len;
	master->unique = FUNC1(master->unique_size, DRM_MEM_DRIVER, M_NOWAIT);
	if (master->unique == NULL)
		return -ENOMEM;


	len = FUNC2(master->unique, master->unique_len,
		       "pci:%04x:%02x:%02x.%d",
		       dev->pci_domain,
		       dev->pci_bus,
		       dev->pci_slot,
		       dev->pci_func);

	if (len >= master->unique_len) {
		FUNC0("buffer overflow");
		ret = -EINVAL;
		goto err;
	} else
		master->unique_len = len;

	return 0;
err:
	return ret;
}