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
struct qlnxr_dev {int /*<<< orphan*/  enet_state; int /*<<< orphan*/ * ha; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
typedef  enum qlnx_rdma_event { ____Placeholder_qlnx_rdma_event } qlnx_rdma_event ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  QLNXR_ENET_STATE_BIT ; 
 int /*<<< orphan*/  QLNXR_PORT ; 
#define  QLNX_ETHDEV_CHANGE_ADDR 130 
#define  QLNX_ETHDEV_DOWN 129 
#define  QLNX_ETHDEV_UP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qlnxr_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *eth_dev, void *qlnx_rdma_dev, enum qlnx_rdma_event event)
{
	struct qlnxr_dev *dev;
	qlnx_host_t *ha;

	dev = qlnx_rdma_dev;

	if (dev == NULL)
		return;

	ha = dev->ha;

	FUNC0(ha, "enter (%p, %d)\n", qlnx_rdma_dev, event);

        switch (event) {

        case QLNX_ETHDEV_UP:
		if (!FUNC3(QLNXR_ENET_STATE_BIT, &dev->enet_state))
			FUNC1(dev, QLNXR_PORT,
				IB_EVENT_PORT_ACTIVE);
                break;

        case QLNX_ETHDEV_CHANGE_ADDR:
                FUNC2(dev);
                break;

        case QLNX_ETHDEV_DOWN:
		if (FUNC3(QLNXR_ENET_STATE_BIT, &dev->enet_state))
			FUNC1(dev, QLNXR_PORT,
				IB_EVENT_PORT_ERR);
                break;
        }

	FUNC0(ha, "exit (%p, %d)\n", qlnx_rdma_dev, event);
	return;
}