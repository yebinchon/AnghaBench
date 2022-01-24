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
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {int /*<<< orphan*/  catas_wq; int /*<<< orphan*/  catas_work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  catas_reset ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int  FUNC2(struct mlx4_dev *dev)
{
	FUNC0(&dev->persist->catas_work, catas_reset);
	dev->persist->catas_wq = FUNC1("mlx4_health");
	if (!dev->persist->catas_wq)
		return -ENOMEM;

	return 0;
}