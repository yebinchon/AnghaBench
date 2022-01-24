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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int /*<<< orphan*/  initializing; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FW_INIT_WAIT_MS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*,unsigned int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev, u32 max_wait_mili,
			u32 warn_time_mili)
{
	int warn = jiffies + FUNC6(warn_time_mili);
	int end = jiffies + FUNC6(max_wait_mili);
	int err = 0;

	FUNC0(max_wait_mili > warn_time_mili);

	while (FUNC1(dev) == 1) {
		if (FUNC8(jiffies, end)) {
			err = -EBUSY;
			break;
		}
		if (warn_time_mili && FUNC8(jiffies, warn)) {
			FUNC5(dev,
			    "Waiting for FW initialization, timeout abort in %u s\n",
			    (unsigned int)(FUNC3(end - warn) / 1000));
			warn = jiffies + FUNC6(warn_time_mili);
		}
		FUNC7(FW_INIT_WAIT_MS);
	}

	if (err != 0)
		FUNC4(dev, "Full initializing bit dword = 0x%x\n",
		    FUNC2(&dev->iseg->initializing));

	return err;
}