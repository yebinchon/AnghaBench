#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlnxr_pbl_info {int num_pbls; int /*<<< orphan*/  pbl_size; } ;
struct qlnxr_pbl {int /*<<< orphan*/  pa; int /*<<< orphan*/  va; } ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdev; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlnxr_pbl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct qlnxr_dev *dev, struct qlnxr_pbl_info *pbl_info,
	struct qlnxr_pbl *pbl)
{
	int		i;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

	for (i = 0; i < pbl_info->num_pbls; i++) {
		if (!pbl[i].va)
			continue;
		FUNC2(&dev->ha->cdev, pbl[i].va, pbl[i].pa,
			pbl_info->pbl_size);
	}
	FUNC1(pbl);

	FUNC0(ha, "exit\n");
	return;
}