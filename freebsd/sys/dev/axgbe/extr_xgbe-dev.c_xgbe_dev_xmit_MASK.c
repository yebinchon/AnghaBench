#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xgbe_ring_desc {int /*<<< orphan*/  desc3; int /*<<< orphan*/  desc2; void* desc1; void* desc0; } ;
struct TYPE_2__ {int packets; int /*<<< orphan*/  bytes; } ;
struct xgbe_ring_data {int mbuf_len; struct xgbe_ring_desc* rdesc; TYPE_1__ tx; int /*<<< orphan*/  mbuf_data_paddr; } ;
struct xgbe_packet_data {int tx_packets; int length; int rdesc_count; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  attributes; } ;
struct xgbe_ring {int cur; int coalesce_count; int rdesc_count; int /*<<< orphan*/  rdesc_map; int /*<<< orphan*/  rdesc_dmat; int /*<<< orphan*/  mbuf_map; int /*<<< orphan*/  mbuf_dmat; struct xgbe_packet_data packet_data; } ;
struct xgbe_prv_data {int tx_frames; } ;
struct xgbe_channel {int /*<<< orphan*/  name; struct xgbe_ring* tx_ring; struct xgbe_prv_data* pdata; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  CPC ; 
 int /*<<< orphan*/  CTXT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FL ; 
 int /*<<< orphan*/  HL_B1L ; 
 int /*<<< orphan*/  IC ; 
 int /*<<< orphan*/  LD ; 
 int /*<<< orphan*/  OWN ; 
 int /*<<< orphan*/  PTP ; 
 int /*<<< orphan*/  TTSE ; 
 int /*<<< orphan*/  TX_NORMAL_DESC2 ; 
 int /*<<< orphan*/  TX_NORMAL_DESC3 ; 
 int /*<<< orphan*/  TX_PACKET_ATTRIBUTES ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_channel*,struct xgbe_ring*) ; 

__attribute__((used)) static void FUNC9(struct xgbe_channel *channel)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_ring *ring = channel->tx_ring;
	struct xgbe_ring_data *rdata;
	struct xgbe_ring_desc *rdesc;
	struct xgbe_packet_data *packet = &ring->packet_data;
	unsigned int tx_set_ic;
	int start_index = ring->cur;
	int cur_index = ring->cur;
	int i;

	FUNC0("-->xgbe_dev_xmit\n");

	/* Determine if an interrupt should be generated for this Tx:
	 *   Interrupt:
	 *     - Tx frame count exceeds the frame count setting
	 *     - Addition of Tx frame count to the frame count since the
	 *       last interrupt was set exceeds the frame count setting
	 *   No interrupt:
	 *     - No frame count setting specified (ethtool -C ethX tx-frames 0)
	 *     - Addition of Tx frame count to the frame count since the
	 *       last interrupt was set does not exceed the frame count setting
	 */
	ring->coalesce_count += packet->tx_packets;
	if (!pdata->tx_frames)
		tx_set_ic = 0;
	else if (packet->tx_packets > pdata->tx_frames)
		tx_set_ic = 1;
	else if ((ring->coalesce_count % pdata->tx_frames) <
		 packet->tx_packets)
		tx_set_ic = 1;
	else
		tx_set_ic = 0;
	tx_set_ic = 1;

	rdata = FUNC1(ring, cur_index);
	rdesc = rdata->rdesc;

	/* Update buffer address (for TSO this is the header) */
	rdesc->desc0 =  FUNC5(FUNC6(rdata->mbuf_data_paddr));
	rdesc->desc1 =  FUNC5(FUNC7(rdata->mbuf_data_paddr));

	/* Update the buffer length */
	FUNC3(rdesc->desc2, TX_NORMAL_DESC2, HL_B1L,
			  rdata->mbuf_len);

	/* Timestamp enablement check */
	if (FUNC2(packet->attributes, TX_PACKET_ATTRIBUTES, PTP))
		FUNC3(rdesc->desc2, TX_NORMAL_DESC2, TTSE, 1);

	/* Mark it as First Descriptor */
	FUNC3(rdesc->desc3, TX_NORMAL_DESC3, FD, 1);

	/* Mark it as a NORMAL descriptor */
	FUNC3(rdesc->desc3, TX_NORMAL_DESC3, CTXT, 0);

	/* Set OWN bit if not the first descriptor */
	if (cur_index != start_index)
		FUNC3(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);

	/* Enable CRC and Pad Insertion */
	FUNC3(rdesc->desc3, TX_NORMAL_DESC3, CPC, 0);

	/* Set the total length to be transmitted */
	FUNC3(rdesc->desc3, TX_NORMAL_DESC3, FL,
			  packet->length);

	for (i = cur_index - start_index + 1; i < packet->rdesc_count; i++) {
		cur_index++;
		rdata = FUNC1(ring, cur_index);
		rdesc = rdata->rdesc;

		/* Update buffer address */
		rdesc->desc0 = FUNC5(FUNC6(rdata->mbuf_data_paddr));
		rdesc->desc1 = FUNC5(FUNC7(rdata->mbuf_data_paddr));

		/* Update the buffer length */
		FUNC3(rdesc->desc2, TX_NORMAL_DESC2, HL_B1L,
				  rdata->mbuf_len);

		/* Set OWN bit */
		FUNC3(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);

		/* Mark it as NORMAL descriptor */
		FUNC3(rdesc->desc3, TX_NORMAL_DESC3, CTXT, 0);
	}

	/* Set LAST bit for the last descriptor */
	FUNC3(rdesc->desc3, TX_NORMAL_DESC3, LD, 1);

	/* Set IC bit based on Tx coalescing settings */
	if (tx_set_ic)
		FUNC3(rdesc->desc2, TX_NORMAL_DESC2, IC, 1);

	/* Save the Tx info to report back during cleanup */
	rdata->tx.packets = packet->tx_packets;
	rdata->tx.bytes = packet->tx_bytes;

	/* Sync the DMA buffers */
	FUNC4(ring->rdesc_dmat, ring->rdesc_map,
	    BUS_DMASYNC_PREWRITE);
	FUNC4(ring->mbuf_dmat, ring->mbuf_map,
	    BUS_DMASYNC_PREWRITE);

	/* In case the Tx DMA engine is running, make sure everything
	 * is written to the descriptor(s) before setting the OWN bit
	 * for the first descriptor
	 */

	/* Set OWN bit for the first descriptor */
	rdata = FUNC1(ring, start_index);
	rdesc = rdata->rdesc;
	FUNC3(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);

	/* Sync to ensure the OWN bit was seen */
	FUNC4(ring->rdesc_dmat, ring->rdesc_map,
	    BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);

	ring->cur = cur_index + 1;
	FUNC8(channel, ring);

	FUNC0("  %s: descriptors %u to %u written\n",
	      channel->name, start_index & (ring->rdesc_count - 1),
	      (ring->cur - 1) & (ring->rdesc_count - 1));

	FUNC0("<--xgbe_dev_xmit\n");
}