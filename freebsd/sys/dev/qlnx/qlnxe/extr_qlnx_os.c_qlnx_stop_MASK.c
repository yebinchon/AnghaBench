#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct qlnx_fastpath {int /*<<< orphan*/  fp_task; int /*<<< orphan*/ * fp_taskqueue; int /*<<< orphan*/  tx_mtx; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_7__ {scalar_t__ state; int num_rss; struct qlnx_fastpath* fp_array; int /*<<< orphan*/  pci_dev; struct ifnet* ifp; } ;
typedef  TYPE_1__ qlnx_host_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ QLNX_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(qlnx_host_t *ha)
{
	struct ifnet	*ifp = ha->ifp;
	device_t	dev;
	int		i;

	dev = ha->pci_dev;

	ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE | IFF_DRV_RUNNING);

	/*
	 * We simply lock and unlock each fp->tx_mtx to
	 * propagate the if_drv_flags
	 * state to each tx thread
	 */
        FUNC0(ha, "QLNX STATE = %d\n",ha->state);

	if (ha->state == QLNX_STATE_OPEN) {
        	for (i = 0; i < ha->num_rss; i++) {
			struct qlnx_fastpath *fp = &ha->fp_array[i];

			FUNC1(&fp->tx_mtx);
			FUNC2(&fp->tx_mtx);

			if (fp->fp_taskqueue != NULL)
				FUNC6(fp->fp_taskqueue,
					&fp->fp_task);
		}
	}
#ifdef QLNX_ENABLE_IWARP
	if (qlnx_vf_device(ha) != 0) {
		qlnx_rdma_dev_close(ha);
	}
#endif /* #ifdef QLNX_ENABLE_IWARP */

	FUNC4(ha);

	return;
}