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
struct qlnxr_pbl {int /*<<< orphan*/  pa; int /*<<< orphan*/  list_entry; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct mr_info {int /*<<< orphan*/  free_pbl_list; int /*<<< orphan*/  pbl_info; TYPE_1__* pbl_table; int /*<<< orphan*/  inuse_pbl_list; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_2__ {int /*<<< orphan*/  pa; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct qlnxr_dev*,struct mr_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct qlnxr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qlnxr_dev*,int /*<<< orphan*/ *,size_t,int) ; 

__attribute__((used)) static int
FUNC7(struct qlnxr_dev *dev, struct mr_info *info,
	size_t page_list_len, bool two_layered)
{
	int			rc;
	struct qlnxr_pbl	*tmp;
	qlnx_host_t		*ha;

	ha = dev->ha;

	FUNC2(ha, "enter\n");

	FUNC0(&info->free_pbl_list);
	FUNC0(&info->inuse_pbl_list);

	rc = FUNC6(dev, &info->pbl_info,
				  page_list_len, two_layered);
	if (rc) {
		FUNC1(ha, "qlnxr_prepare_pbl_tbl [%d]\n", rc);
		goto done;
	}

	info->pbl_table = FUNC5(dev, &info->pbl_info, GFP_KERNEL);

	if (!info->pbl_table) {
		rc = -ENOMEM;
		FUNC1(ha, "qlnxr_alloc_pbl_tbl returned NULL\n");
		goto done;
	}

	FUNC2(ha, "pbl_table_pa = %pa\n", &info->pbl_table->pa);

	/* in usual case we use 2 PBLs, so we add one to free
	 * list and allocating another one
	 */
	tmp = FUNC5(dev, &info->pbl_info, GFP_KERNEL);

	if (!tmp) {
		FUNC1(ha, "Extra PBL is not allocated\n");
		goto done; /* it's OK if second allocation fails, so rc = 0*/
	}

	FUNC4(&tmp->list_entry, &info->free_pbl_list);

	FUNC2(ha, "extra pbl_table_pa = %pa\n", &tmp->pa);

done:
	if (rc)
		FUNC3(dev, info);

	FUNC2(ha, "exit [%d]\n", rc);

	return rc;
}