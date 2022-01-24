#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct TYPE_11__ {int /*<<< orphan*/  raw; } ;
struct qlnx_tx_queue {size_t sw_tx_cons; TYPE_4__* sw_tx_ring; int /*<<< orphan*/  tx_pbl; TYPE_1__ tx_db; int /*<<< orphan*/ * hw_cons_ptr; } ;
struct qlnx_fastpath {int /*<<< orphan*/  tx_pkts_completed; int /*<<< orphan*/  tx_pkts_freed; int /*<<< orphan*/  err_tx_free_pkt_null; int /*<<< orphan*/  rss_id; } ;
struct TYPE_12__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct eth_tx_bd {int dummy; } ;
struct TYPE_13__ {int nbds; } ;
struct eth_tx_1st_bd {TYPE_3__ data; } ;
struct TYPE_15__ {int /*<<< orphan*/  tx_tag; int /*<<< orphan*/  ifp; } ;
typedef  TYPE_5__ qlnx_host_t ;
typedef  scalar_t__ bus_dmamap_t ;
struct TYPE_14__ {scalar_t__ map; struct mbuf* mp; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QL_ERR_INJCT_TX_INT_MBUF_NULL ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct eth_tx_bd* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC14(qlnx_host_t *ha, struct qlnx_fastpath *fp,
	struct qlnx_tx_queue *txq)
{
	u16			idx;
	struct mbuf		*mp;
	bus_dmamap_t		map;
	int			i;
	struct eth_tx_bd	*tx_data_bd;
	struct eth_tx_1st_bd	*first_bd;
	int			nbds = 0;

	idx = txq->sw_tx_cons;
	mp = txq->sw_tx_ring[idx].mp;
	map = txq->sw_tx_ring[idx].map;

	if ((mp == NULL) || FUNC3(ha, QL_ERR_INJCT_TX_INT_MBUF_NULL)){

		FUNC4(ha, QL_ERR_INJCT_TX_INT_MBUF_NULL);

		FUNC2(ha, "(mp == NULL) "
			" tx_idx = 0x%x"
			" ecore_prod_idx = 0x%x"
			" ecore_cons_idx = 0x%x"
			" hw_bd_cons = 0x%x"
			" txq_db_last = 0x%x"
			" elem_left = 0x%x\n",
			fp->rss_id,
			FUNC10(&txq->tx_pbl),
			FUNC8(&txq->tx_pbl),
			FUNC11(*txq->hw_cons_ptr),
			txq->tx_db.raw,
			FUNC9(&txq->tx_pbl));

		fp->err_tx_free_pkt_null++;

		//DEBUG
		FUNC13(ha);

		return;
	} else {

		FUNC1((ha->ifp));
		FUNC0((ha->ifp), (mp->m_pkthdr.len));

		FUNC5(ha->tx_tag, map, BUS_DMASYNC_POSTWRITE);
		FUNC6(ha->tx_tag, map);

		fp->tx_pkts_freed++;
		fp->tx_pkts_completed++;

		FUNC12(mp);
	}

	first_bd = (struct eth_tx_1st_bd *)FUNC7(&txq->tx_pbl);
	nbds = first_bd->data.nbds;

//	BD_SET_UNMAP_ADDR_LEN(first_bd, 0, 0);

	for (i = 1; i < nbds; i++) {
		tx_data_bd = FUNC7(&txq->tx_pbl);
//		BD_SET_UNMAP_ADDR_LEN(tx_data_bd, 0, 0);
	}
	txq->sw_tx_ring[idx].flags = 0;
	txq->sw_tx_ring[idx].mp = NULL;
	txq->sw_tx_ring[idx].map = (bus_dmamap_t)0;

	return;
}