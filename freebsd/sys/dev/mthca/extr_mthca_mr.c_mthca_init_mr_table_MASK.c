#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mthca_mpt_entry {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  max_order; } ;
struct TYPE_9__ {int /*<<< orphan*/ * mpt_base; int /*<<< orphan*/ * mtt_base; TYPE_4__ mtt_buddy; } ;
struct TYPE_10__ {int mpt_base; int mtt_base; int /*<<< orphan*/  mpt_alloc; TYPE_4__ mtt_buddy; TYPE_2__ tavor_fmr; TYPE_4__* fmr_mtt_buddy; } ;
struct TYPE_8__ {int num_mpts; int fmr_reserved_mtts; int num_mtt_segs; int mtt_seg_size; int reserved_mtts; int /*<<< orphan*/  reserved_mrws; } ;
struct mthca_dev {int mthca_flags; TYPE_3__ mr_table; TYPE_1__ limits; int /*<<< orphan*/  pdev; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MTHCA_FLAG_DDR_HIDDEN ; 
 int MTHCA_FLAG_FMR ; 
 int MTHCA_FLAG_SINAI_OPT ; 
 int FUNC0 (int) ; 
 void* FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mthca_dev*,int,TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 

int FUNC14(struct mthca_dev *dev)
{
	phys_addr_t addr;
	int mpts, mtts, err, i;

	err = FUNC4(&dev->mr_table.mpt_alloc,
			       dev->limits.num_mpts,
			       ~0, dev->limits.reserved_mrws);
	if (err)
		return err;

	if (!FUNC10(dev) &&
	    (dev->mthca_flags & MTHCA_FLAG_DDR_HIDDEN))
		dev->limits.fmr_reserved_mtts = 0;
	else
		dev->mthca_flags |= MTHCA_FLAG_FMR;

	if (dev->mthca_flags & MTHCA_FLAG_SINAI_OPT)
		FUNC9(dev, "Memory key throughput optimization activated.\n");

	err = FUNC8(&dev->mr_table.mtt_buddy,
			       FUNC0(dev->limits.num_mtt_segs - 1));

	if (err)
		goto err_mtt_buddy;

	dev->mr_table.tavor_fmr.mpt_base = NULL;
	dev->mr_table.tavor_fmr.mtt_base = NULL;

	if (dev->limits.fmr_reserved_mtts) {
		i = FUNC0(dev->limits.fmr_reserved_mtts - 1);

		if (i >= 31) {
			FUNC11(dev, "Unable to reserve 2^31 FMR MTTs.\n");
			err = -EINVAL;
			goto err_fmr_mpt;
		}
		mpts = mtts = 1 << i;
	} else {
		mtts = dev->limits.num_mtt_segs;
		mpts = dev->limits.num_mpts;
	}

	if (!FUNC10(dev) &&
	    (dev->mthca_flags & MTHCA_FLAG_FMR)) {

		addr = FUNC13(dev->pdev, 4) +
			((FUNC12(dev->pdev, 4) - 1) &
			 dev->mr_table.mpt_base);

		dev->mr_table.tavor_fmr.mpt_base =
			FUNC1(addr, mpts * sizeof(struct mthca_mpt_entry));

		if (!dev->mr_table.tavor_fmr.mpt_base) {
			FUNC11(dev, "MPT ioremap for FMR failed.\n");
			err = -ENOMEM;
			goto err_fmr_mpt;
		}

		addr = FUNC13(dev->pdev, 4) +
			((FUNC12(dev->pdev, 4) - 1) &
			 dev->mr_table.mtt_base);

		dev->mr_table.tavor_fmr.mtt_base =
			FUNC1(addr, mtts * dev->limits.mtt_seg_size);
		if (!dev->mr_table.tavor_fmr.mtt_base) {
			FUNC11(dev, "MTT ioremap for FMR failed.\n");
			err = -ENOMEM;
			goto err_fmr_mtt;
		}
	}

	if (dev->limits.fmr_reserved_mtts) {
		err = FUNC8(&dev->mr_table.tavor_fmr.mtt_buddy, FUNC0(mtts - 1));
		if (err)
			goto err_fmr_mtt_buddy;

		/* Prevent regular MRs from using FMR keys */
		err = FUNC6(&dev->mr_table.mtt_buddy, FUNC0(mtts - 1));
		if (err)
			goto err_reserve_fmr;

		dev->mr_table.fmr_mtt_buddy =
			&dev->mr_table.tavor_fmr.mtt_buddy;
	} else
		dev->mr_table.fmr_mtt_buddy = &dev->mr_table.mtt_buddy;

	/* FMR table is always the first, take reserved MTTs out of there */
	if (dev->limits.reserved_mtts) {
		i = FUNC0(dev->limits.reserved_mtts - 1);

		if (FUNC5(dev, i,
					  dev->mr_table.fmr_mtt_buddy) == -1) {
			FUNC11(dev, "MTT table of order %d is too small.\n",
				  dev->mr_table.fmr_mtt_buddy->max_order);
			err = -ENOMEM;
			goto err_reserve_mtts;
		}
	}

	return 0;

err_reserve_mtts:
err_reserve_fmr:
	if (dev->limits.fmr_reserved_mtts)
		FUNC7(&dev->mr_table.tavor_fmr.mtt_buddy);

err_fmr_mtt_buddy:
	if (dev->mr_table.tavor_fmr.mtt_base)
		FUNC2(dev->mr_table.tavor_fmr.mtt_base);

err_fmr_mtt:
	if (dev->mr_table.tavor_fmr.mpt_base)
		FUNC2(dev->mr_table.tavor_fmr.mpt_base);

err_fmr_mpt:
	FUNC7(&dev->mr_table.mtt_buddy);

err_mtt_buddy:
	FUNC3(&dev->mr_table.mpt_alloc);

	return err;
}