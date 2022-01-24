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
struct mlx5_uuar_info {int ver; int /*<<< orphan*/  lock; int /*<<< orphan*/ * count; } ;
typedef  enum mlx5_ib_latency_class { ____Placeholder_mlx5_ib_latency_class } mlx5_ib_latency_class ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  MLX5_IB_LATENCY_CLASS_FAST_PATH 131 
#define  MLX5_IB_LATENCY_CLASS_HIGH 130 
#define  MLX5_IB_LATENCY_CLASS_LOW 129 
#define  MLX5_IB_LATENCY_CLASS_MEDIUM 128 
 int FUNC0 (struct mlx5_uuar_info*) ; 
 int FUNC1 (struct mlx5_uuar_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlx5_uuar_info *uuari,
		      enum mlx5_ib_latency_class lat)
{
	int uuarn = -EINVAL;

	FUNC2(&uuari->lock);
	switch (lat) {
	case MLX5_IB_LATENCY_CLASS_LOW:
		uuarn = 0;
		uuari->count[uuarn]++;
		break;

	case MLX5_IB_LATENCY_CLASS_MEDIUM:
		if (uuari->ver < 2)
			uuarn = -ENOMEM;
		else
			uuarn = FUNC1(uuari);
		break;

	case MLX5_IB_LATENCY_CLASS_HIGH:
		if (uuari->ver < 2)
			uuarn = -ENOMEM;
		else
			uuarn = FUNC0(uuari);
		break;

	case MLX5_IB_LATENCY_CLASS_FAST_PATH:
		uuarn = 2;
		break;
	}
	FUNC3(&uuari->lock);

	return uuarn;
}