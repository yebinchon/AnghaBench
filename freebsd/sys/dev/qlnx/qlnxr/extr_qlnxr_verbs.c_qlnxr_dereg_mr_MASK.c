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
struct TYPE_2__ {int /*<<< orphan*/  pbl_table; int /*<<< orphan*/  pbl_info; } ;
struct qlnxr_mr {scalar_t__ type; struct qlnxr_mr* pages; scalar_t__ umem; TYPE_1__ info; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 scalar_t__ QLNXR_MR_DMA ; 
 scalar_t__ QLNXR_MR_FRMR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct qlnxr_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qlnxr_mr* FUNC2 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct qlnxr_mr*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlnxr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(struct ib_mr *ib_mr)
{
	struct qlnxr_mr	*mr = FUNC2(ib_mr);
	struct qlnxr_dev *dev = FUNC1((ib_mr->device));
	int		rc = 0;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

	if ((mr->type != QLNXR_MR_DMA) && (mr->type != QLNXR_MR_FRMR))
		FUNC5(dev, &mr->info.pbl_info, mr->info.pbl_table);

	/* it could be user registered memory. */
	if (mr->umem)
		FUNC3(mr->umem);

	FUNC4(mr->pages);

	FUNC4(mr);

	FUNC0(ha, "exit\n");
	return rc;
}