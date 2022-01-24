#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx5_core_dev {TYPE_3__* root_ns; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct TYPE_7__ {TYPE_1__ ns; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_ft_level; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FS_FT_NIC_RX ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CORE_FS_ROOT_NS_NAME ; 
 TYPE_3__* FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ flow_table_properties_nic_receive ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_fs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev)
{
	int max_ft_level = FUNC1(dev,
					      flow_table_properties_nic_receive.
					      max_ft_level);

	dev->root_ns = FUNC2(dev, FS_FT_NIC_RX,
				      MLX5_CORE_FS_ROOT_NS_NAME);
	if (FUNC0(dev->root_ns))
		goto err;


	if (FUNC3(dev, max_ft_level, &root_fs, &dev->root_ns->ns.base))
		goto err;

	FUNC4(&dev->root_ns->ns);

	return 0;
err:
	return -ENOMEM;
}