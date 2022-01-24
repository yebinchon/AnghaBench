#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {scalar_t__ csum_flags; } ;
struct mbuf {TYPE_2__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  doorbells; } ;
struct ena_ring {scalar_t__ acum_pkts; TYPE_4__* que; int /*<<< orphan*/  running; TYPE_3__ tx_stats; int /*<<< orphan*/  br; struct ena_adapter* adapter; } ;
struct ena_com_io_sq {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  ifp; TYPE_1__* ena_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  cleanup_task; int /*<<< orphan*/  cleanup_tq; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {struct ena_com_io_sq* io_sq_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int ENA_COM_NO_MEM ; 
 int ENA_COM_NO_SPACE ; 
 int ENA_DBG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ena_adapter*) ; 
 int /*<<< orphan*/  ENA_FLAG_LINK_UP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int ENA_TXPTH ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_com_io_sq*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ena_ring*,struct mbuf**) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static void
FUNC16(struct ena_ring *tx_ring)
{
	struct mbuf *mbuf;
	struct ena_adapter *adapter = tx_ring->adapter;
	struct ena_com_io_sq* io_sq;
	int ena_qid;
	int ret = 0;

	if (FUNC14((FUNC10(adapter->ifp) & IFF_DRV_RUNNING) == 0))
		return;

	if (FUNC14(!FUNC1(ENA_FLAG_LINK_UP, adapter)))
		return;

	ena_qid = FUNC2(tx_ring->que->id);
	io_sq = &adapter->ena_dev->io_sq_queues[ena_qid];

	while ((mbuf = FUNC5(adapter->ifp, tx_ring->br)) != NULL) {
		FUNC8(ENA_DBG | ENA_TXPTH, "\ndequeued mbuf %p with flags %#x and"
		    " header csum flags %#jx\n",
		    mbuf, mbuf->m_flags, (uint64_t)mbuf->m_pkthdr.csum_flags);

		if (FUNC14(!tx_ring->running)) {
			FUNC6(adapter->ifp, tx_ring->br, mbuf);
			break;
		}

		if (FUNC14((ret = FUNC9(tx_ring, &mbuf)) != 0)) {
			if (ret == ENA_COM_NO_MEM) {
				FUNC6(adapter->ifp, tx_ring->br, mbuf);
			} else if (ret == ENA_COM_NO_SPACE) {
				FUNC6(adapter->ifp, tx_ring->br, mbuf);
			} else {
				FUNC12(mbuf);
				FUNC4(adapter->ifp, tx_ring->br);
			}

			break;
		}

		FUNC4(adapter->ifp, tx_ring->br);

		if (FUNC14((FUNC10(adapter->ifp) &
		    IFF_DRV_RUNNING) == 0))
			return;

		tx_ring->acum_pkts++;

		FUNC0(adapter->ifp, mbuf);
	}

	if (FUNC11(tx_ring->acum_pkts != 0)) {
		FUNC15();
		/* Trigger the dma engine */
		FUNC7(io_sq);
		FUNC3(tx_ring->tx_stats.doorbells, 1);
		tx_ring->acum_pkts = 0;
	}

	if (FUNC14(!tx_ring->running))
		FUNC13(tx_ring->que->cleanup_tq,
		    &tx_ring->que->cleanup_task);
}