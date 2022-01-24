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
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u8 ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  primary_mac; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct qlnxr_dev* FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct ib_device *ibdev, u8 port, int index,
	union ib_gid *sgid)
{
	struct qlnxr_dev	*dev;
	qlnx_host_t		*ha;

	dev = FUNC1(ibdev);
	ha = dev->ha;

	FUNC0(ha, "enter\n");

	FUNC3(sgid->raw, 0, sizeof(sgid->raw));

	FUNC2(sgid->raw, dev->ha->primary_mac, sizeof (dev->ha->primary_mac));

	FUNC0(ha, "exit\n");

	return 0;
}