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
struct TYPE_2__ {int /*<<< orphan*/  bf_mapping; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx5_core_dev *dev)
{
	resource_size_t bf_start = FUNC2(dev->pdev, 0);
	resource_size_t bf_len = FUNC1(dev->pdev, 0);

	dev->priv.bf_mapping = FUNC0(bf_start, bf_len);

	return dev->priv.bf_mapping ? 0 : -ENOMEM;
}