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
struct TYPE_2__ {int num_ports; } ;
struct mthca_dev {int mthca_flags; int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  driver_uar; int /*<<< orphan*/  kar; int /*<<< orphan*/  driver_pd; TYPE_1__ limits; } ;

/* Variables and functions */
 int MTHCA_FLAG_MSI_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mthca_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mthca_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 struct mthca_dev* FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC24(struct pci_dev *pdev)
{
	struct mthca_dev *mdev = FUNC21(pdev);
	int p;

	if (mdev) {
		FUNC15(mdev);
		FUNC18(mdev);

		for (p = 1; p <= mdev->limits.num_ports; ++p)
			FUNC2(mdev, p);

		FUNC6(mdev);
		FUNC3(mdev);
		FUNC9(mdev);
		FUNC10(mdev);
		FUNC4(mdev);
		FUNC14(mdev);
		FUNC5(mdev);

		FUNC16(mdev, &mdev->driver_pd);

		FUNC7(mdev);
		FUNC8(mdev);

		FUNC1(mdev->kar);
		FUNC17(mdev, &mdev->driver_uar);
		FUNC11(mdev);
		FUNC12(mdev);
		FUNC13(mdev);

		if (mdev->mthca_flags & MTHCA_FLAG_MSI_X)
			FUNC20(pdev);

		FUNC0(&mdev->ib_dev);
		FUNC22(pdev);
		FUNC19(pdev);
		FUNC23(pdev, NULL);
	}
}