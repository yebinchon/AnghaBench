#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sw_rx_data {int dummy; } ;
struct lro_ctrl {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * p_virt_table; } ;
struct TYPE_11__ {TYPE_1__ pbl_sp; int /*<<< orphan*/ * p_virt_addr; } ;
struct qlnx_rx_queue {struct lro_ctrl lro; TYPE_7__ rx_comp_ring; TYPE_7__ rx_bd_ring; int /*<<< orphan*/ * sw_rx_ring; TYPE_4__* tpa_info; } ;
struct ecore_dev {int dummy; } ;
struct TYPE_9__ {struct ecore_dev cdev; } ;
typedef  TYPE_2__ qlnx_host_t ;
struct TYPE_10__ {int /*<<< orphan*/ * mpf; } ;

/* Variables and functions */
 int ETH_TPA_MAX_AGGS_NUM ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct qlnx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct lro_ctrl*) ; 

__attribute__((used)) static void
FUNC6(qlnx_host_t *ha, struct qlnx_rx_queue *rxq)
{
	struct ecore_dev	*cdev;
	int			i;

	cdev = &ha->cdev;

	FUNC3(ha, rxq);

	for (i = 0; i < ETH_TPA_MAX_AGGS_NUM; i++) {
		FUNC4(ha, &rxq->tpa_info[i]);
		if (rxq->tpa_info[i].mpf != NULL)
			FUNC2(rxq->tpa_info[i].mpf);
	}

	FUNC0((void *)&rxq->sw_rx_ring[0],
		(sizeof (struct sw_rx_data) * RX_RING_SIZE));

        /* Free the real RQ ring used by FW */
	if (rxq->rx_bd_ring.p_virt_addr) {
                FUNC1(cdev, &rxq->rx_bd_ring);
                rxq->rx_bd_ring.p_virt_addr = NULL;
        }

        /* Free the real completion ring used by FW */
        if (rxq->rx_comp_ring.p_virt_addr &&
                        rxq->rx_comp_ring.pbl_sp.p_virt_table) {
                FUNC1(cdev, &rxq->rx_comp_ring);
                rxq->rx_comp_ring.p_virt_addr = NULL;
                rxq->rx_comp_ring.pbl_sp.p_virt_table = NULL;
        }

#ifdef QLNX_SOFT_LRO
	{
		struct lro_ctrl *lro;

		lro = &rxq->lro;
		tcp_lro_free(lro);
	}
#endif /* #ifdef QLNX_SOFT_LRO */

	return;
}