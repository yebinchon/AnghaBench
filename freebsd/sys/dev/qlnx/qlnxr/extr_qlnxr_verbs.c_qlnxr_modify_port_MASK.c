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
typedef  int uint8_t ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_port_modify {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct qlnxr_dev* FUNC1 (struct ib_device*) ; 

int
FUNC2(struct ib_device *ibdev, uint8_t port, int mask,
	struct ib_port_modify *props)
{
	struct qlnxr_dev	*dev;
	qlnx_host_t		*ha;

	dev = FUNC1(ibdev);
	ha = dev->ha;

	FUNC0(ha, "enter\n");

	if (port > 1) {
		FUNC0(ha, "port (%d) > 1\n", port);
		return -EINVAL;
	}

	FUNC0(ha, "exit\n");
	return 0;
}