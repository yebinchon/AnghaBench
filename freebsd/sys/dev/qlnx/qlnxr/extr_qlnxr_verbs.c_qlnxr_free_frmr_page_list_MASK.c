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
struct TYPE_2__ {struct qlnxr_fast_reg_page_list* page_list; } ;
struct qlnxr_fast_reg_page_list {TYPE_1__ ibfrpl; int /*<<< orphan*/  info; int /*<<< orphan*/  dev; } ;
struct ib_fast_reg_page_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct qlnxr_fast_reg_page_list* FUNC1 (struct ib_fast_reg_page_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_fast_reg_page_list*) ; 

void
FUNC3(struct ib_fast_reg_page_list *page_list)
{
	struct qlnxr_fast_reg_page_list *frmr_list;

	frmr_list = FUNC1(page_list);
 
	FUNC0(frmr_list->dev, &frmr_list->info);

	FUNC2(frmr_list->ibfrpl.page_list);
	FUNC2(frmr_list);

	return;
}