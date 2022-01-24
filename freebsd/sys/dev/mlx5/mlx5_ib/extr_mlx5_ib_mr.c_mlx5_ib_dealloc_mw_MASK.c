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
struct mlx5_ib_mw {int /*<<< orphan*/  mmkey; } ;
struct ib_mw {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_mw*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mw* FUNC3 (struct ib_mw*) ; 

int FUNC4(struct ib_mw *mw)
{
	struct mlx5_ib_mw *mmw = FUNC3(mw);
	int err;

	err =  FUNC1((FUNC2(mw->device))->mdev,
				      &mmw->mmkey);
	if (!err)
		FUNC0(mmw);
	return err;
}