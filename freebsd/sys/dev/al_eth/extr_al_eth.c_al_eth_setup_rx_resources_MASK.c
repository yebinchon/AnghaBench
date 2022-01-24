#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union al_udma_desc {int dummy; } al_udma_desc ;
struct device {int dummy; } ;
struct al_udma_q_params {int size; int cdesc_size; int /*<<< orphan*/ * cdesc_base; int /*<<< orphan*/  cdesc_phy_base; int /*<<< orphan*/  cdesc_phy_base_map; int /*<<< orphan*/  cdesc_phy_base_tag; int /*<<< orphan*/ * desc_base; int /*<<< orphan*/  desc_phy_base; int /*<<< orphan*/  desc_phy_base_map; int /*<<< orphan*/  desc_phy_base_tag; } ;
struct al_eth_rx_buffer {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
struct al_eth_ring {int sw_count; int descs_size; int hw_count; int cdescs_size; scalar_t__ next_to_use; scalar_t__ next_to_clean; TYPE_2__ lro; int /*<<< orphan*/  lro_enabled; TYPE_3__* rx_buffer_info; int /*<<< orphan*/  dma_buf_tag; int /*<<< orphan*/  enqueue_tq; int /*<<< orphan*/  enqueue_task; struct al_udma_q_params q_params; struct device* dev; } ;
struct al_eth_adapter {TYPE_1__* netdev; int /*<<< orphan*/  dev; struct al_eth_ring* rx_ring; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  dma_map; } ;
struct TYPE_4__ {int if_capenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  AL_TSO_SIZE ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENOMEM ; 
 int IFCAP_LRO ; 
 int /*<<< orphan*/  M_IFAL ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct al_eth_ring*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int) ; 
 int /*<<< orphan*/  al_eth_rx_recv_work ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 TYPE_3__* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 
 int FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC13(struct al_eth_adapter *adapter, unsigned int qid)
{
	struct al_eth_ring *rx_ring = &adapter->rx_ring[qid];
	struct device *dev = rx_ring->dev;
	struct al_udma_q_params *q_params = &rx_ring->q_params;
	int size;
	int ret;

	size = sizeof(struct al_eth_rx_buffer) * rx_ring->sw_count;

	/* alloc extra element so in rx path we can always prefetch rx_info + 1 */
	size += 1;

	rx_ring->rx_buffer_info = FUNC8(size, M_IFAL, M_ZERO | M_WAITOK);
	if (rx_ring->rx_buffer_info == NULL)
		return (ENOMEM);

	rx_ring->descs_size = rx_ring->hw_count * sizeof(union al_udma_desc);
	q_params->size = rx_ring->hw_count;

	ret = FUNC1(dev, &q_params->desc_phy_base_tag,
	    &q_params->desc_phy_base_map,
	    (bus_addr_t *)&q_params->desc_phy_base,
	    (void**)&q_params->desc_base, rx_ring->descs_size);

	if ((q_params->desc_base == NULL) || (ret != 0))
		return (ENOMEM);

	/* size in bytes of the udma completion ring descriptor */
	q_params->cdesc_size = 16;
	rx_ring->cdescs_size = rx_ring->hw_count * q_params->cdesc_size;
	ret = FUNC1(dev, &q_params->cdesc_phy_base_tag,
	    &q_params->cdesc_phy_base_map,
	    (bus_addr_t *)&q_params->cdesc_phy_base,
	    (void**)&q_params->cdesc_base, rx_ring->cdescs_size);

	if ((q_params->cdesc_base == NULL) || (ret != 0))
		return (ENOMEM);

	/* Allocate taskqueues */
	FUNC0(&rx_ring->enqueue_task, 0, al_eth_rx_recv_work, rx_ring);
	rx_ring->enqueue_tq = FUNC10("al_rx_enque", M_NOWAIT,
	    taskqueue_thread_enqueue, &rx_ring->enqueue_tq);
	FUNC11(&rx_ring->enqueue_tq, 1, PI_NET, "%s rxeq",
	    FUNC5(adapter->dev));

	/* Setup DMA descriptor areas. */
	ret = FUNC2(FUNC4(dev),
	    1, 0,			/* alignment, bounds */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    AL_TSO_SIZE,		/* maxsize */
	    1,				/* nsegments */
	    AL_TSO_SIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL,			/* lockfunc */
	    NULL,			/* lockfuncarg */
	    &rx_ring->dma_buf_tag);

	if (ret != 0) {
		FUNC6(dev,"Unable to allocate RX dma_buf_tag\n");
		return (ret);
	}

	for (size = 0; size < rx_ring->sw_count; size++) {
		ret = FUNC3(rx_ring->dma_buf_tag, 0,
		    &rx_ring->rx_buffer_info[size].dma_map);
		if (ret != 0) {
			FUNC6(dev,"Unable to map DMA RX buffer memory\n");
			return (ret);
		}
	}

	/* Zero out the descriptor ring */
	FUNC9(q_params->cdesc_base, 0, rx_ring->cdescs_size);

	/* Create LRO for the ring */
	if ((adapter->netdev->if_capenable & IFCAP_LRO) != 0) {
		int err = FUNC12(&rx_ring->lro);
		if (err != 0) {
			FUNC6(adapter->dev,
			    "LRO[%d] Initialization failed!\n", qid);
		} else {
			FUNC7(adapter->dev,
			    "RX Soft LRO[%d] Initialized\n", qid);
			rx_ring->lro_enabled = TRUE;
			rx_ring->lro.ifp = adapter->netdev;
		}
	}

	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;

	return (0);
}