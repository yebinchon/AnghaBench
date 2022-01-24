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
typedef  int /*<<< orphan*/  uresp ;
struct qlnxr_qp {int icid; int /*<<< orphan*/  qp_id; } ;
struct qlnxr_dev {scalar_t__ atomic_cap; int /*<<< orphan*/ * ha; } ;
struct qlnxr_create_qp_uresp {int atomic_supported; int /*<<< orphan*/  qp_id; } ;
struct ib_udata {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 scalar_t__ IB_ATOMIC_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct ib_udata*,struct qlnxr_create_qp_uresp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_create_qp_uresp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlnxr_dev*,struct qlnxr_create_qp_uresp*,struct qlnxr_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlnxr_dev*,struct qlnxr_create_qp_uresp*,struct qlnxr_qp*) ; 

__attribute__((used)) static int
FUNC5(struct qlnxr_dev *dev,
	struct qlnxr_qp *qp,
	struct ib_udata *udata)
{
	int				rc;
	struct qlnxr_create_qp_uresp	uresp;
	qlnx_host_t			*ha;

	ha = dev->ha;

	FUNC0(ha, "enter qp->icid =0x%x\n", qp->icid);

	FUNC2(&uresp, 0, sizeof(uresp));
	FUNC4(dev, &uresp, qp);
	FUNC3(dev, &uresp, qp);

	uresp.atomic_supported = dev->atomic_cap != IB_ATOMIC_NONE;
	uresp.qp_id = qp->qp_id;

	rc = FUNC1(udata, &uresp, sizeof(uresp));

	FUNC0(ha, "exit [%d]\n", rc);
	return rc;
}