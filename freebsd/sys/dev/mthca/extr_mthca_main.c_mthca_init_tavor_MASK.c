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
struct mthca_profile {int num_uar; int /*<<< orphan*/  num_srq; scalar_t__ uarc_size; } ;
struct mthca_init_hca_param {int dummy; } ;
struct mthca_dev_lim {int uar_size; int /*<<< orphan*/  max_srqs; } ;
struct mthca_dev {int mthca_flags; } ;
typedef  int s64 ;

/* Variables and functions */
 int MTHCA_FLAG_SRQ ; 
 int PAGE_SIZE ; 
 struct mthca_profile hca_profile ; 
 int FUNC0 (struct mthca_dev*,struct mthca_init_hca_param*) ; 
 int FUNC1 (struct mthca_dev*) ; 
 int FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*) ; 
 int FUNC4 (struct mthca_dev*) ; 
 int FUNC5 (struct mthca_dev*,struct mthca_dev_lim*) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,char*,int) ; 
 int FUNC7 (struct mthca_dev*,struct mthca_profile*,struct mthca_dev_lim*,struct mthca_init_hca_param*) ; 

__attribute__((used)) static int FUNC8(struct mthca_dev *mdev)
{
	s64 size;
	int err;
	struct mthca_dev_lim        dev_lim;
	struct mthca_profile        profile;
	struct mthca_init_hca_param init_hca;

	err = FUNC4(mdev);
	if (err) {
		FUNC6(mdev, "SYS_EN command returned %d, aborting.\n", err);
		return err;
	}

	err = FUNC2(mdev);
	if (err) {
		FUNC6(mdev, "QUERY_FW command returned %d,"
				" aborting.\n", err);
		goto err_disable;
	}
	err = FUNC1(mdev);
	if (err) {
		FUNC6(mdev, "QUERY_DDR command returned %d, aborting.\n", err);
		goto err_disable;
	}

	err = FUNC5(mdev, &dev_lim);
	if (err) {
		FUNC6(mdev, "QUERY_DEV_LIM command returned %d, aborting.\n", err);
		goto err_disable;
	}

	profile = hca_profile;
	profile.num_uar   = dev_lim.uar_size / PAGE_SIZE;
	profile.uarc_size = 0;
	if (mdev->mthca_flags & MTHCA_FLAG_SRQ)
		profile.num_srq = dev_lim.max_srqs;

	size = FUNC7(mdev, &profile, &dev_lim, &init_hca);
	if (size < 0) {
		err = size;
		goto err_disable;
	}

	err = FUNC0(mdev, &init_hca);
	if (err) {
		FUNC6(mdev, "INIT_HCA command returned %d, aborting.\n", err);
		goto err_disable;
	}

	return 0;

err_disable:
	FUNC3(mdev);

	return err;
}