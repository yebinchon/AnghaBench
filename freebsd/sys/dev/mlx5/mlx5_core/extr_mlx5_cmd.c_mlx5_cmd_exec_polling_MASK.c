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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct mlx5_core_dev*,void*,void*) ; 

int FUNC2(struct mlx5_core_dev *dev, void *in, int in_size,
			  void *out, int out_size)
{
	int err;

	err = FUNC0(dev, in, in_size, out, out_size, NULL, NULL, true);
	return err ? : FUNC1(dev, in, out);
}