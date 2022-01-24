#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct qlnxr_dev {int num_cnq; int /*<<< orphan*/  sgid_lock; int /*<<< orphan*/  idr_lock; TYPE_3__* sgid_tbl; TYPE_3__* sb_array; TYPE_3__* cnq_array; TYPE_1__* ha; int /*<<< orphan*/ * iwarp_wq; } ;
struct qlnxr_cnq {int dummy; } ;
struct ecore_sb_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  cdev; } ;
typedef  TYPE_1__ qlnx_host_t ;
struct TYPE_7__ {int /*<<< orphan*/  pbl; } ;

/* Variables and functions */
 int QLNXR_MAX_MSIX ; 
 int QLNXR_MAX_SGID ; 
 scalar_t__ FUNC0 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(struct qlnxr_dev *dev)
{
        int i;
	qlnx_host_t *ha;

	ha = dev->ha;

	FUNC1(ha, "enter dev->num_cnq = %d\n", dev->num_cnq);

	if (FUNC0(dev)) {
		if (dev->iwarp_wq != NULL)
			FUNC3(dev->iwarp_wq);
	}

        for (i = 0; i < dev->num_cnq; i++) {
                FUNC7(dev->ha, &dev->sb_array[i]);
                FUNC4(&dev->ha->cdev, &dev->cnq_array[i].pbl);
        }

	FUNC2(dev->cnq_array, (sizeof(struct qlnxr_cnq) * QLNXR_MAX_MSIX));
	FUNC2(dev->sb_array, (sizeof(struct ecore_sb_info) * QLNXR_MAX_MSIX));
	FUNC2(dev->sgid_tbl, (sizeof(union ib_gid) * QLNXR_MAX_SGID));

	if (FUNC6(&dev->idr_lock))
		FUNC5(&dev->idr_lock);

	if (FUNC6(&dev->sgid_lock))
		FUNC5(&dev->sgid_lock);

	FUNC1(ha, "exit\n");
	return;
}