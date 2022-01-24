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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 struct mlx5_core_dev* FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev = FUNC4(pdev);
	int err;

	err = FUNC6(pdev, FUNC0(64));
	if (err) {
		FUNC3(dev, "couldn't set 64-bit PCI DMA mask\n");
		err = FUNC6(pdev, FUNC0(32));
		if (err) {
			FUNC2(dev, "Can't set PCI DMA mask, aborting\n");
			return err;
		}
	}

	err = FUNC5(pdev, FUNC0(64));
	if (err) {
		FUNC3(dev, "couldn't set 64-bit consistent PCI DMA mask\n");
		err = FUNC5(pdev, FUNC0(32));
		if (err) {
			FUNC2(dev, "Can't set consistent PCI DMA mask, aborting\n");
			return err;
		}
	}

	FUNC1(&pdev->dev, 2u * 1024 * 1024 * 1024);
	return err;
}