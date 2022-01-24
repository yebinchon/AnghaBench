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
typedef  int /*<<< orphan*/  u64 ;
struct ib_fast_reg_page_list {struct qlnxr_fast_reg_page_list* page_list; } ;
struct qlnxr_fast_reg_page_list {struct ib_fast_reg_page_list ibfrpl; int /*<<< orphan*/  info; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_fast_reg_page_list* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct qlnxr_dev* FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlnxr_fast_reg_page_list*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qlnxr_dev*,int /*<<< orphan*/ *,int,int) ; 

struct ib_fast_reg_page_list *
FUNC7(struct ib_device *ibdev, int page_list_len)
{
	struct qlnxr_fast_reg_page_list *frmr_list = NULL;
	struct qlnxr_dev		*dev;
	int				size = page_list_len * sizeof(u64);
	int				rc = -ENOMEM;
	qlnx_host_t			*ha;

	dev = FUNC3(ibdev);
	ha = dev->ha;

	FUNC2(ha, "enter\n");

	frmr_list = FUNC5(sizeof(*frmr_list), GFP_KERNEL);
	if (!frmr_list) {
		FUNC1(ha, "kzalloc(frmr_list) failed\n");
		goto err;
	}

	frmr_list->dev = dev;
	frmr_list->ibfrpl.page_list = FUNC5(size, GFP_KERNEL);
	if (!frmr_list->ibfrpl.page_list) {
		FUNC1(ha, "frmr_list->ibfrpl.page_list = NULL failed\n");
		goto err0;
	}

	rc = FUNC6(dev, &frmr_list->info, page_list_len,
			  1 /* allow dual layer pbl */);
	if (rc)
		goto err1;

	FUNC2(ha, "exit %p\n", &frmr_list->ibfrpl);

	return &frmr_list->ibfrpl;

err1:
	FUNC4(frmr_list->ibfrpl.page_list);
err0:
	FUNC4(frmr_list);
err:
	FUNC2(ha, "exit with error\n");

	return FUNC0(rc);
}