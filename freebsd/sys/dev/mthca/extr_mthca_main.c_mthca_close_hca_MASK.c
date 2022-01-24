#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fw_icm; } ;
struct TYPE_4__ {TYPE_1__ arbel; } ;
struct mthca_dev {int mthca_flags; TYPE_2__ fw; } ;

/* Variables and functions */
 int MTHCA_FLAG_NO_LAM ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*) ; 
 scalar_t__ FUNC6 (struct mthca_dev*) ; 

__attribute__((used)) static void FUNC7(struct mthca_dev *mdev)
{
	FUNC0(mdev, 0);

	if (FUNC6(mdev)) {
		FUNC5(mdev);

		FUNC3(mdev);
		FUNC4(mdev, mdev->fw.arbel.fw_icm, 0);

		if (!(mdev->mthca_flags & MTHCA_FLAG_NO_LAM))
			FUNC1(mdev);
	} else
		FUNC2(mdev);
}