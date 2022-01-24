#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct mlx4_mpt_entry {int dummy; } ;
struct TYPE_15__ {int access; int /*<<< orphan*/  mtt; void* size; void* iova; } ;
struct mlx4_ib_mr {TYPE_3__ mmr; TYPE_7__* umem; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct ib_mr {TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_16__ {int /*<<< orphan*/  page_size; } ;
struct TYPE_14__ {int /*<<< orphan*/  pdn; } ;
struct TYPE_13__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_MR_REREG_ACCESS ; 
 int IB_MR_REREG_PD ; 
 int IB_MR_REREG_TRANS ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ,void*,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx4_ib_dev*,int /*<<< orphan*/ *,TYPE_7__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct mlx4_mpt_entry*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct mlx4_mpt_entry*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,struct mlx4_mpt_entry***) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mlx4_mpt_entry**) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_3__*,struct mlx4_mpt_entry**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_3__*,void*,void*,int,int,struct mlx4_mpt_entry*) ; 
 struct mlx4_ib_dev* FUNC15 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_mr* FUNC16 (struct ib_mr*) ; 
 TYPE_2__* FUNC17 (struct ib_pd*) ; 

int FUNC18(struct ib_mr *mr, int flags,
			  u64 start, u64 length, u64 virt_addr,
			  int mr_access_flags, struct ib_pd *pd,
			  struct ib_udata *udata)
{
	struct mlx4_ib_dev *dev = FUNC15(mr->device);
	struct mlx4_ib_mr *mmr = FUNC16(mr);
	struct mlx4_mpt_entry *mpt_entry;
	struct mlx4_mpt_entry **pmpt_entry = &mpt_entry;
	int err;

	/* Since we synchronize this call and mlx4_ib_dereg_mr via uverbs,
	 * we assume that the calls can't run concurrently. Otherwise, a
	 * race exists.
	 */
	err =  FUNC10(dev->dev, &mmr->mmr, &pmpt_entry);

	if (err)
		return err;

	if (flags & IB_MR_REREG_PD) {
		err = FUNC9(dev->dev, *pmpt_entry,
					   FUNC17(pd)->pdn);

		if (err)
			goto release_mpt_entry;
	}

	if (flags & IB_MR_REREG_ACCESS) {
		err = FUNC8(dev->dev, *pmpt_entry,
					       FUNC2(mr_access_flags));

		if (err)
			goto release_mpt_entry;
	}

	if (flags & IB_MR_REREG_TRANS) {
		int shift;
		int n;

		FUNC13(dev->dev, &mmr->mmr);
		FUNC5(mmr->umem);
		mmr->umem = FUNC3(mr->uobject->context, start, length,
					mr_access_flags |
					IB_ACCESS_LOCAL_WRITE,
					0);
		if (FUNC0(mmr->umem)) {
			err = FUNC1(mmr->umem);
			/* Prevent mlx4_ib_dereg_mr from free'ing invalid pointer */
			mmr->umem = NULL;
			goto release_mpt_entry;
		}
		n = FUNC4(mmr->umem);
		shift = FUNC6(mmr->umem->page_size);

		err = FUNC14(dev->dev, &mmr->mmr,
					      virt_addr, length, n, shift,
					      *pmpt_entry);
		if (err) {
			FUNC5(mmr->umem);
			goto release_mpt_entry;
		}
		mmr->mmr.iova       = virt_addr;
		mmr->mmr.size       = length;

		err = FUNC7(dev, &mmr->mmr.mtt, mmr->umem);
		if (err) {
			FUNC13(dev->dev, &mmr->mmr);
			FUNC5(mmr->umem);
			goto release_mpt_entry;
		}
	}

	/* If we couldn't transfer the MR to the HCA, just remember to
	 * return a failure. But dereg_mr will free the resources.
	 */
	err = FUNC12(dev->dev, &mmr->mmr, pmpt_entry);
	if (!err && flags & IB_MR_REREG_ACCESS)
		mmr->mmr.access = mr_access_flags;

release_mpt_entry:
	FUNC11(dev->dev, pmpt_entry);

	return err;
}