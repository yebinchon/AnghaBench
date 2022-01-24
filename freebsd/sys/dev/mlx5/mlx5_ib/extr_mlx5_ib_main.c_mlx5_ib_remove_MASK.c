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
struct mlx5_ib_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  port; int /*<<< orphan*/  devr; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_ETHERNET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*) ; 

__attribute__((used)) static void FUNC11(struct mlx5_core_dev *mdev, void *context)
{
	struct mlx5_ib_dev *dev = context;
	enum rdma_link_layer ll = FUNC9(&dev->ib_dev, 1);

	FUNC6(dev);
	FUNC10(dev);
	FUNC3(&dev->ib_dev);
	FUNC7(dev);
	FUNC1(dev);
	FUNC8(dev);
	FUNC0(&dev->devr);
	if (ll == IB_LINK_LAYER_ETHERNET)
		FUNC5(dev);
	FUNC4(dev->port);
	FUNC2(&dev->ib_dev);
}