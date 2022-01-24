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
struct mlx5_ib_dev {int num_ports; TYPE_1__* port; int /*<<< orphan*/  mdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  q_cnt_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_IB ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mlx5_ib_dev *dev)
{
	int i;
	int ret;

	for (i = 0; i < dev->num_ports; i++) {
		ret = FUNC2(dev->mdev,
						 MLX5_INTERFACE_PROTOCOL_IB,
						 &dev->port[i].q_cnt_id);
		if (ret) {
			FUNC1(dev,
				     "couldn't allocate queue counter for port %d, err %d\n",
				     i + 1, ret);
			goto dealloc_counters;
		}
	}

	return 0;

dealloc_counters:
	while (--i >= 0)
		FUNC0(dev, i);

	return ret;
}