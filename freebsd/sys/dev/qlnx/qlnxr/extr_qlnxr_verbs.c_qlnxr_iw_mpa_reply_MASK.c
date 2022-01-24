#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qlnxr_iw_ep {struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_2__* ha; } ;
struct ecore_iwarp_send_rtr_in {int /*<<< orphan*/  ep_context; } ;
struct ecore_iwarp_cm_event_params {int /*<<< orphan*/  ep_context; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
typedef  TYPE_2__ qlnx_host_t ;
struct TYPE_4__ {int if_drv_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_iwarp_send_rtr_in*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ecore_iwarp_send_rtr_in*) ; 

__attribute__((used)) static int
FUNC3(void *context,
	struct ecore_iwarp_cm_event_params *params)
{
        struct qlnxr_iw_ep	*ep = (struct qlnxr_iw_ep *)context;
        struct qlnxr_dev	*dev = ep->dev;
        struct ecore_iwarp_send_rtr_in rtr_in;
        int			rc;
	qlnx_host_t		*ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

	if (!(ha->ifp->if_drv_flags & IFF_DRV_RUNNING))
		return -EINVAL;

	FUNC1(&rtr_in, sizeof(struct ecore_iwarp_send_rtr_in));
        rtr_in.ep_context = params->ep_context;

        rc = FUNC2(dev->rdma_ctx, &rtr_in);

	FUNC0(ha, "exit rc = %d\n", rc);
        return rc;
}