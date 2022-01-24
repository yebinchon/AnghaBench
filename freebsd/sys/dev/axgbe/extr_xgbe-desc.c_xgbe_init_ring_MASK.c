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
struct xgbe_ring_desc {int dummy; } ;
struct xgbe_ring_data {int dummy; } ;
struct xgbe_ring {unsigned int rdesc_count; int /*<<< orphan*/  mbuf_map; int /*<<< orphan*/  mbuf_dmat; int /*<<< orphan*/  rdata; int /*<<< orphan*/  rdesc_dmat; int /*<<< orphan*/  rdesc_map; int /*<<< orphan*/  rdesc; int /*<<< orphan*/  rdesc_paddr; } ;
struct xgbe_prv_data {int /*<<< orphan*/  dmat; scalar_t__ coherent; } ;
typedef  unsigned int bus_size_t ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  M_AXGBE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 unsigned int XGBE_TX_MAX_BUF_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  xgbe_ring_dmamap_cb ; 

__attribute__((used)) static int FUNC9(struct xgbe_prv_data *pdata,
			  struct xgbe_ring *ring, unsigned int rdesc_count)
{
	bus_size_t len;
	int err, flags;

	FUNC0("-->xgbe_init_ring\n");

	if (!ring)
		return 0;

	flags = 0;
	if (pdata->coherent)
		flags = BUS_DMA_COHERENT;

	/* Descriptors */
	ring->rdesc_count = rdesc_count;
	len = sizeof(struct xgbe_ring_desc) * rdesc_count;
	err = FUNC1(pdata->dmat, 512, 0, BUS_SPACE_MAXADDR,
	    BUS_SPACE_MAXADDR, NULL, NULL, len, 1, len, flags, NULL, NULL,
	    &ring->rdesc_dmat);
	if (err != 0) {
		FUNC8("Unable to create the DMA tag: %d\n", err);
		return -err;
	}

	err = FUNC5(ring->rdesc_dmat, (void **)&ring->rdesc,
	    BUS_DMA_WAITOK | BUS_DMA_COHERENT, &ring->rdesc_map);
	if (err != 0) {
		FUNC2(ring->rdesc_dmat);
		FUNC8("Unable to allocate DMA memory: %d\n", err);
		return -err;
	}
	err = FUNC4(ring->rdesc_dmat, ring->rdesc_map, ring->rdesc,
	    len, xgbe_ring_dmamap_cb, &ring->rdesc_paddr, 0);
	if (err != 0) {
		FUNC6(ring->rdesc_dmat, ring->rdesc, ring->rdesc_map);
		FUNC2(ring->rdesc_dmat);
		FUNC8("Unable to load DMA memory\n");
		return -err;
	}

	/* Descriptor information */
	ring->rdata = FUNC7(rdesc_count * sizeof(struct xgbe_ring_data),
	    M_AXGBE, M_WAITOK | M_ZERO);

	/* Create the space DMA tag for mbufs */
	err = FUNC1(pdata->dmat, 1, 0, BUS_SPACE_MAXADDR,
	    BUS_SPACE_MAXADDR, NULL, NULL, XGBE_TX_MAX_BUF_SIZE * rdesc_count,
	    rdesc_count, XGBE_TX_MAX_BUF_SIZE, flags, NULL, NULL,
	    &ring->mbuf_dmat);
	if (err != 0)
		return -err;

	err = FUNC3(ring->mbuf_dmat, 0, &ring->mbuf_map);
	if (err != 0)
		return -err;

	FUNC0("<--xgbe_init_ring\n");

	return 0;
}