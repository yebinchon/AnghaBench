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
struct mthca_user_db_table {int /*<<< orphan*/  mutex; TYPE_1__* page; } ;
struct mthca_uar {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int MTHCA_DB_REC_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mthca_dev *dev, struct mthca_uar *uar,
			 struct mthca_user_db_table *db_tab, int index)
{
	if (!FUNC0(dev))
		return;

	/*
	 * To make our bookkeeping simpler, we don't unmap DB
	 * pages until we clean up the whole db table.
	 */

	FUNC1(&db_tab->mutex);

	--db_tab->page[index / MTHCA_DB_REC_PER_PAGE].refcount;

	FUNC2(&db_tab->mutex);
}