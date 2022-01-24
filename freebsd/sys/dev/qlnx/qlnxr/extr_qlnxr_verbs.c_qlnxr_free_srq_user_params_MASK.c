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
struct TYPE_2__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  pbl_tbl; int /*<<< orphan*/  pbl_info; } ;
struct qlnxr_srq {int /*<<< orphan*/  prod_umem; TYPE_1__ usrq; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct qlnxr_srq *srq)
{
	struct qlnxr_dev	*dev = srq->dev;
	qlnx_host_t		*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

	FUNC2(srq->dev, &srq->usrq.pbl_info, srq->usrq.pbl_tbl);
	FUNC1(srq->usrq.umem);
	FUNC1(srq->prod_umem);

	FUNC0(ha, "exit\n");
	return;
}