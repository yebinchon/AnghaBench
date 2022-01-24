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
struct ib_xrcd {int dummy; } ;
struct mlx4_ib_xrcd {int /*<<< orphan*/  xrcdn; int /*<<< orphan*/  pd; struct ib_xrcd ibxrcd; int /*<<< orphan*/  cq; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSYS ; 
 struct ib_xrcd* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MLX4_DEV_CAP_FLAG_XRC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mlx4_ib_xrcd*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_xrcd*) ; 
 struct mlx4_ib_xrcd* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (struct ib_device*) ; 

__attribute__((used)) static struct ib_xrcd *FUNC11(struct ib_device *ibdev,
					  struct ib_ucontext *context,
					  struct ib_udata *udata)
{
	struct mlx4_ib_xrcd *xrcd;
	struct ib_cq_init_attr cq_attr = {};
	int err;

	if (!(FUNC10(ibdev)->dev->caps.flags & MLX4_DEV_CAP_FLAG_XRC))
		return FUNC0(-ENOSYS);

	xrcd = FUNC7(sizeof *xrcd, GFP_KERNEL);
	if (!xrcd)
		return FUNC0(-ENOMEM);

	err = FUNC8(FUNC10(ibdev)->dev, &xrcd->xrcdn);
	if (err)
		goto err1;

	xrcd->pd = FUNC3(ibdev, 0);
	if (FUNC1(xrcd->pd)) {
		err = FUNC2(xrcd->pd);
		goto err2;
	}

	cq_attr.cqe = 1;
	xrcd->cq = FUNC4(ibdev, NULL, NULL, xrcd, &cq_attr);
	if (FUNC1(xrcd->cq)) {
		err = FUNC2(xrcd->cq);
		goto err3;
	}

	return &xrcd->ibxrcd;

err3:
	FUNC5(xrcd->pd);
err2:
	FUNC9(FUNC10(ibdev)->dev, xrcd->xrcdn);
err1:
	FUNC6(xrcd);
	return FUNC0(err);
}