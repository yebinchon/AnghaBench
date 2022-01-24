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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct drm_device {int pci_domain; int pci_bus; int pci_slot; int pci_func; int modesetting; TYPE_1__* driver; int /*<<< orphan*/  busid_str; } ;
struct TYPE_2__ {int driver_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int DRIVER_MODESET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int,int,int,int) ; 

int
FUNC4(struct drm_device *dev, struct sysctl_ctx_list *ctx,
    struct sysctl_oid *top)
{
	struct sysctl_oid *oid;

	FUNC3(dev->busid_str, sizeof(dev->busid_str),
	     "pci:%04x:%02x:%02x.%d", dev->pci_domain, dev->pci_bus,
	     dev->pci_slot, dev->pci_func);
	oid = FUNC1(ctx, FUNC2(top), OID_AUTO, "busid",
	    CTLFLAG_RD, dev->busid_str, 0, NULL);
	if (oid == NULL)
		return (-ENOMEM);
	dev->modesetting = (dev->driver->driver_features & DRIVER_MODESET) != 0;
	oid = FUNC0(ctx, FUNC2(top), OID_AUTO,
	    "modesetting", CTLFLAG_RD, &dev->modesetting, 0, NULL);
	if (oid == NULL)
		return (-ENOMEM);

	return (0);
}