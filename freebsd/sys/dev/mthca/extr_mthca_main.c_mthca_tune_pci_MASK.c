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
struct mthca_dev {int mthca_flags; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int MTHCA_FLAG_PCIE ; 
 int /*<<< orphan*/  PCI_CAP_ID_PCIX ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tune_pci ; 

__attribute__((used)) static int FUNC7(struct mthca_dev *mdev)
{
	if (!tune_pci)
		return 0;

	/* First try to max out Read Byte Count */
	if (FUNC2(mdev->pdev, PCI_CAP_ID_PCIX)) {
		if (FUNC6(mdev->pdev, FUNC5(mdev->pdev))) {
			FUNC0(mdev, "Couldn't set PCI-X max read count, "
				"aborting.\n");
			return -ENODEV;
		}
	} else if (!(mdev->mthca_flags & MTHCA_FLAG_PCIE))
		FUNC1(mdev, "No PCI-X capability, not setting RBC.\n");

	if (FUNC3(mdev->pdev)) {
		if (FUNC4(mdev->pdev, 4096)) {
			FUNC0(mdev, "Couldn't write PCI Express read request, "
				"aborting.\n");
			return -ENODEV;
		}
	} else if (mdev->mthca_flags & MTHCA_FLAG_PCIE)
		FUNC1(mdev, "No PCI Express capability, "
			   "not setting Max Read Request Size.\n");

	return 0;
}