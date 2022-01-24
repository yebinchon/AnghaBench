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
struct TYPE_2__ {int /*<<< orphan*/  inta_pin; } ;
struct mthca_dev {int /*<<< orphan*/  board_id; int /*<<< orphan*/  rev_id; TYPE_1__ eq_table; } ;
struct mthca_adapter {int /*<<< orphan*/  board_id; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  inta_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mthca_dev*,struct mthca_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,char*,int) ; 
 int FUNC4 (struct mthca_dev*) ; 
 int FUNC5 (struct mthca_dev*) ; 
 scalar_t__ FUNC6 (struct mthca_dev*) ; 

__attribute__((used)) static int FUNC7(struct mthca_dev *mdev)
{
	int err;
	struct mthca_adapter adapter;

	if (FUNC6(mdev))
		err = FUNC4(mdev);
	else
		err = FUNC5(mdev);

	if (err)
		return err;

	err = FUNC1(mdev, &adapter);
	if (err) {
		FUNC3(mdev, "QUERY_ADAPTER command returned %d, aborting.\n", err);
		goto err_close;
	}

	mdev->eq_table.inta_pin = adapter.inta_pin;
	if (!FUNC6(mdev))
		mdev->rev_id = adapter.revision_id;
	FUNC0(mdev->board_id, adapter.board_id, sizeof mdev->board_id);

	return 0;

err_close:
	FUNC2(mdev);
	return err;
}