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
struct qlnxr_dev {int /*<<< orphan*/  qpidr; int /*<<< orphan*/ * ha; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct qlnxr_dev*,...) ; 
 struct qlnxr_dev* FUNC1 (struct ib_device*) ; 
 struct ib_qp* FUNC2 (int /*<<< orphan*/ *,int) ; 

struct ib_qp *
FUNC3(struct ib_device *ibdev, int qpn)
{
	struct qlnxr_dev *dev = FUNC1(ibdev);
	struct ib_qp *qp;
	qlnx_host_t	*ha;

	ha = dev->ha;

	FUNC0(ha, "enter dev = %p ibdev = %p qpn = %d\n", dev, ibdev, qpn);

	qp = FUNC2(&dev->qpidr, qpn);

	FUNC0(ha, "exit qp = %p\n", qp);

	return (qp);
}