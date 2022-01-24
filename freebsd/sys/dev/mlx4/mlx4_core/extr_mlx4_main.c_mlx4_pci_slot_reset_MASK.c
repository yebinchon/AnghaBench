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
struct mlx4_dev_persistent {struct mlx4_dev* dev; } ;
struct mlx4_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,...) ; 
 int FUNC1 (struct mlx4_dev*) ; 
 struct mlx4_dev_persistent* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC4(struct pci_dev *pdev)
{
	struct mlx4_dev_persistent *persist = FUNC2(pdev);
	struct mlx4_dev	 *dev  = persist->dev;
	int err;

	FUNC0(dev, "mlx4_pci_slot_reset was called\n");
	err = FUNC1(dev);
	if (err) {
		FUNC0(dev, "Can not re-enable device, err=%d\n", err);
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC3(pdev);
	return PCI_ERS_RESULT_RECOVERED;
}