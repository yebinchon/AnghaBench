#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_14__ {int /*<<< orphan*/  key; int /*<<< orphan*/  mtt; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct mlx4_ib_mr {TYPE_6__* umem; TYPE_3__ mmr; struct ib_mr ibmr; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; TYPE_1__* uobject; } ;
struct TYPE_15__ {int /*<<< orphan*/  page_size; } ;
struct TYPE_13__ {int /*<<< orphan*/  pdn; } ;
struct TYPE_12__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_ib_mr*) ; 
 struct mlx4_ib_mr* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx4_ib_dev*,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 struct mlx4_ib_dev* FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (struct ib_pd*) ; 

struct ib_mr *FUNC16(struct ib_pd *pd, u64 start, u64 length,
				  u64 virt_addr, int access_flags,
				  struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC14(pd->device);
	struct mlx4_ib_mr *mr;
	int shift;
	int err;
	int n;

	mr = FUNC9(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	/* Force registering the memory as writable. */
	/* Used for memory re-registeration. HCA protects the access */
	mr->umem = FUNC4(pd->uobject->context, start, length,
			       access_flags | IB_ACCESS_LOCAL_WRITE, 0);
	if (FUNC1(mr->umem)) {
		err = FUNC2(mr->umem);
		goto err_free;
	}

	n = FUNC5(mr->umem);
	shift = FUNC7(mr->umem->page_size);

	err = FUNC11(dev->dev, FUNC15(pd)->pdn, virt_addr, length,
			    FUNC3(access_flags), n, shift, &mr->mmr);
	if (err)
		goto err_umem;

	err = FUNC10(dev, &mr->mmr.mtt, mr->umem);
	if (err)
		goto err_mr;

	err = FUNC12(dev->dev, &mr->mmr);
	if (err)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->mmr.key;

	return &mr->ibmr;

err_mr:
	(void) FUNC13(FUNC14(pd->device)->dev, &mr->mmr);

err_umem:
	FUNC6(mr->umem);

err_free:
	FUNC8(mr);

	return FUNC0(err);
}