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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mthca_mr {int /*<<< orphan*/  mtt; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mthca_mr*) ; 
 int FUNC5 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct mthca_dev *dev, u32 pd,
			u64 *buffer_list, int buffer_size_shift,
			int list_len, u64 iova, u64 total_size,
			u32 access, struct mthca_mr *mr)
{
	int err;

	mr->mtt = FUNC2(dev, list_len);
	if (FUNC0(mr->mtt))
		return FUNC1(mr->mtt);

	err = FUNC5(dev, mr->mtt, 0, buffer_list, list_len);
	if (err) {
		FUNC3(dev, mr->mtt);
		return err;
	}

	err = FUNC4(dev, pd, buffer_size_shift, iova,
			     total_size, access, mr);
	if (err)
		FUNC3(dev, mr->mtt);

	return err;
}