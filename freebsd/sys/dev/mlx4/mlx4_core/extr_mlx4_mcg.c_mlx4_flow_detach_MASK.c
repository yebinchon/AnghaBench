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
typedef  scalar_t__ u64 ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx4_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,unsigned long long) ; 

int FUNC2(struct mlx4_dev *dev, u64 reg_id)
{
	int err;

	err = FUNC0(dev, reg_id);
	if (err)
		FUNC1(dev, "Fail to detach network rule. registration id = 0x%llx\n",
			 (unsigned long long)reg_id);
	return err;
}