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
struct pci_dev {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*) ; 
 struct mlx5_core_dev* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev = FUNC1(pdev);
	int err = 0;

	if (!(FUNC3(pdev, 0) & IORESOURCE_MEM)) {
		FUNC0(dev, "Missing registers BAR, aborting\n");
		return -ENODEV;
	}

	err = FUNC2(pdev, DRIVER_NAME);
	if (err)
		FUNC0(dev, "Couldn't get PCI resources, aborting\n");

	return err;
}