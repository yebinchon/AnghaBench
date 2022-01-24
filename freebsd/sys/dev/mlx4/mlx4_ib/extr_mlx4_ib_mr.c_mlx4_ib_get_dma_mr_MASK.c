#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  key; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_mr {TYPE_3__ mmr; struct ib_mr ibmr; int /*<<< orphan*/ * umem; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_mr*) ; 
 struct mlx4_ib_mr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct ib_pd*) ; 

struct ib_mr *FUNC9(struct ib_pd *pd, int acc)
{
	struct mlx4_ib_mr *mr;
	int err;

	mr = FUNC3(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	err = FUNC4(FUNC7(pd->device)->dev, FUNC8(pd)->pdn, 0,
			    ~0ull, FUNC1(acc), 0, 0, &mr->mmr);
	if (err)
		goto err_free;

	err = FUNC5(FUNC7(pd->device)->dev, &mr->mmr);
	if (err)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;
	mr->umem = NULL;

	return &mr->ibmr;

err_mr:
	(void) FUNC6(FUNC7(pd->device)->dev, &mr->mmr);

err_free:
	FUNC2(mr);

	return FUNC0(err);
}