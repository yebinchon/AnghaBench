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
struct TYPE_2__ {int fw_pages; int* pages_per_func; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
typedef  int s64 ;

/* Variables and functions */
 int MAX_RECLAIM_TIME_MSECS ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

s64 FUNC4(struct mlx5_core_dev *dev)
{
	int end = jiffies + FUNC1(MAX_RECLAIM_TIME_MSECS);
	s64 prevpages = 0;
	s64 npages = 0;

	while (!FUNC3(jiffies, end)) {
		/* exclude own function, VFs only */
		npages = dev->priv.fw_pages - dev->priv.pages_per_func[0];
		if (!npages)
			break;

		if (npages != prevpages)
			end = end + FUNC1(100);

		prevpages = npages;
		FUNC2(1);
	}

	if (npages)
		FUNC0(dev, "FW did not return all VFs pages, will cause to memory leak\n");

	return -npages;
}