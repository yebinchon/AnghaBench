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
struct pci_dev {int dummy; } ;
struct mlx5_tool_addr {int /*<<< orphan*/  func; int /*<<< orphan*/  slot; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {scalar_t__ bsdclass; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mlx5_core_driver ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_core_dev* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int
FUNC4(const struct mlx5_tool_addr *devaddr,
    struct mlx5_core_dev **mdev)
{
	device_t dev;
	struct pci_dev *pdev;

	dev = FUNC2(devaddr->domain, devaddr->bus, devaddr->slot,
	    devaddr->func);
	if (dev == NULL)
		return (ENOENT);
	if (FUNC0(dev) != mlx5_core_driver.bsdclass)
		return (EINVAL);
	pdev = FUNC1(dev);
	*mdev = FUNC3(pdev);
	if (*mdev == NULL)
		return (ENOENT);
	return (0);
}