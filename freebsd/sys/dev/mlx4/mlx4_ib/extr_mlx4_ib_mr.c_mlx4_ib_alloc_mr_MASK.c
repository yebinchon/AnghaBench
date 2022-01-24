#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_mr {TYPE_2__ mmr; struct ib_mr ibmr; int /*<<< orphan*/ * umem; int /*<<< orphan*/  max_pages; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_5__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_MR_TYPE_MEM_REG ; 
 int /*<<< orphan*/  MLX4_MAX_FAST_REG_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_mr*) ; 
 struct mlx4_ib_mr* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mlx4_ib_mr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_ib_mr*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 struct mlx4_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct ib_pd*) ; 

struct ib_mr *FUNC10(struct ib_pd *pd,
			       enum ib_mr_type mr_type,
			       u32 max_num_sg)
{
	struct mlx4_ib_dev *dev = FUNC8(pd->device);
	struct mlx4_ib_mr *mr;
	int err;

	if (mr_type != IB_MR_TYPE_MEM_REG ||
	    max_num_sg > MLX4_MAX_FAST_REG_PAGES)
		return FUNC0(-EINVAL);

	mr = FUNC2(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	err = FUNC5(dev->dev, FUNC9(pd)->pdn, 0, 0, 0,
			    max_num_sg, 0, &mr->mmr);
	if (err)
		goto err_free;

	err = FUNC3(pd->device, mr, max_num_sg);
	if (err)
		goto err_free_mr;

	mr->max_pages = max_num_sg;

	err = FUNC6(dev->dev, &mr->mmr);
	if (err)
		goto err_free_pl;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
	mr->umem = NULL;

	return &mr->ibmr;

err_free_pl:
	FUNC4(mr);
err_free_mr:
	(void) FUNC7(dev->dev, &mr->mmr);
err_free:
	FUNC1(mr);
	return FUNC0(err);
}