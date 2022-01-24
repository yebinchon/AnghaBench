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
struct mlx5_uuar_info {int num_uars; struct mlx5_ib_ucontext* uars; struct mlx5_ib_ucontext* bitmap; struct mlx5_ib_ucontext* count; } ;
struct mlx5_ib_ucontext {int /*<<< orphan*/  index; int /*<<< orphan*/  tdn; struct mlx5_uuar_info uuari; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_ucontext*) ; 
 int /*<<< orphan*/  log_max_transport_domain ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_ucontext* FUNC6 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC7(struct ib_ucontext *ibcontext)
{
	struct mlx5_ib_ucontext *context = FUNC6(ibcontext);
	struct mlx5_ib_dev *dev = FUNC5(ibcontext->device);
	struct mlx5_uuar_info *uuari = &context->uuari;
	int i;

	if (FUNC0(dev->mdev, log_max_transport_domain))
		FUNC3(dev->mdev, context->tdn);

	for (i = 0; i < uuari->num_uars; i++) {
		if (FUNC2(dev->mdev, uuari->uars[i].index))
			FUNC4(dev, "failed to free UAR 0x%x\n", uuari->uars[i].index);
	}

	FUNC1(uuari->count);
	FUNC1(uuari->bitmap);
	FUNC1(uuari->uars);
	FUNC1(context);

	return 0;
}