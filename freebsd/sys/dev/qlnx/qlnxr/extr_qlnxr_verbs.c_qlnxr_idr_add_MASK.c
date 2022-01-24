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
typedef  int /*<<< orphan*/  u32 ;
struct qlnxr_dev {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  qpidr; int /*<<< orphan*/ * ha; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct qlnxr_dev *dev, void *ptr, u32 id)
{
	u32		newid;
	int		rc;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC2(ha, "enter\n");

	if (!FUNC0(dev))
		return 0;

	do {
		if (!FUNC4(&dev->qpidr, GFP_KERNEL)) {
			FUNC1(ha, "idr_pre_get failed\n");
			return -ENOMEM;
		}

		FUNC5(&dev->idr_lock);

		rc = FUNC3(&dev->qpidr, ptr, id, &newid);

		FUNC6(&dev->idr_lock);

	} while (rc == -EAGAIN);

	FUNC2(ha, "exit [%d]\n", rc);

	return rc;
}