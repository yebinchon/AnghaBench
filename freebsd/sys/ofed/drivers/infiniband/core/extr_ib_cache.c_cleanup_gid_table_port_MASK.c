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
typedef  int /*<<< orphan*/  u8 ;
struct ib_gid_table {int sz; int /*<<< orphan*/  rwlock; TYPE_1__* data_vec; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int props; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int GID_ATTR_FIND_MASK_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct ib_gid_table*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zgid ; 

__attribute__((used)) static void FUNC5(struct ib_device *ib_dev, u8 port,
				   struct ib_gid_table *table)
{
	int i;
	bool deleted = false;

	if (!table)
		return;

	FUNC3(&table->rwlock);
	for (i = 0; i < table->sz; ++i) {
		if (FUNC2(&table->data_vec[i].gid, &zgid,
			   sizeof(table->data_vec[i].gid)))
			if (!FUNC0(ib_dev, port, table, i,
				     table->data_vec[i].props &
				     GID_ATTR_FIND_MASK_DEFAULT))
				deleted = true;
	}
	FUNC4(&table->rwlock);

	if (deleted)
		FUNC1(ib_dev, port);
}