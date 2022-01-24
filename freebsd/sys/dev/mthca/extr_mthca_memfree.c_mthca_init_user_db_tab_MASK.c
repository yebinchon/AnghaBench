#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mthca_user_db_table {TYPE_1__* page; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int uarc_size; } ;
struct mthca_dev {TYPE_2__ uar_table; } ;
struct TYPE_3__ {int /*<<< orphan*/  mem; scalar_t__ uvirt; scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mthca_user_db_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MTHCA_ICM_PAGE_SIZE ; 
 struct mthca_user_db_table* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

struct mthca_user_db_table *FUNC5(struct mthca_dev *dev)
{
	struct mthca_user_db_table *db_tab;
	int npages;
	int i;

	if (!FUNC2(dev))
		return NULL;

	npages = dev->uar_table.uarc_size / MTHCA_ICM_PAGE_SIZE;
	db_tab = FUNC1(sizeof *db_tab + npages * sizeof *db_tab->page, GFP_KERNEL);
	if (!db_tab)
		return FUNC0(-ENOMEM);

	FUNC3(&db_tab->mutex);
	for (i = 0; i < npages; ++i) {
		db_tab->page[i].refcount = 0;
		db_tab->page[i].uvirt    = 0;
		FUNC4(&db_tab->page[i].mem, 1);
	}

	return db_tab;
}