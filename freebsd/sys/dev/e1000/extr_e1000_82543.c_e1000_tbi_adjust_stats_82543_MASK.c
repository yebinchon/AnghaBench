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
typedef  int u8 ;
typedef  int u32 ;
struct e1000_hw_stats {int gorc; scalar_t__ roc; int /*<<< orphan*/  prc1522; int /*<<< orphan*/  prc1023; int /*<<< orphan*/  prc511; int /*<<< orphan*/  prc255; int /*<<< orphan*/  prc127; int /*<<< orphan*/  prc64; int /*<<< orphan*/  mprc; int /*<<< orphan*/  bprc; int /*<<< orphan*/  gprc; int /*<<< orphan*/  crcerrs; } ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 

void FUNC1(struct e1000_hw *hw,
				  struct e1000_hw_stats *stats, u32 frame_len,
				  u8 *mac_addr, u32 max_frame_size)
{
	if (!(FUNC0(hw)))
		goto out;

	/* First adjust the frame length. */
	frame_len--;
	/*
	 * We need to adjust the statistics counters, since the hardware
	 * counters overcount this packet as a CRC error and undercount
	 * the packet as a good packet
	 */
	/* This packet should not be counted as a CRC error. */
	stats->crcerrs--;
	/* This packet does count as a Good Packet Received. */
	stats->gprc++;

	/* Adjust the Good Octets received counters */
	stats->gorc += frame_len;

	/*
	 * Is this a broadcast or multicast?  Check broadcast first,
	 * since the test for a multicast frame will test positive on
	 * a broadcast frame.
	 */
	if ((mac_addr[0] == 0xff) && (mac_addr[1] == 0xff))
		/* Broadcast packet */
		stats->bprc++;
	else if (*mac_addr & 0x01)
		/* Multicast packet */
		stats->mprc++;

	/*
	 * In this case, the hardware has over counted the number of
	 * oversize frames.
	 */
	if ((frame_len == max_frame_size) && (stats->roc > 0))
		stats->roc--;

	/*
	 * Adjust the bin counters when the extra byte put the frame in the
	 * wrong bin. Remember that the frame_len was adjusted above.
	 */
	if (frame_len == 64) {
		stats->prc64++;
		stats->prc127--;
	} else if (frame_len == 127) {
		stats->prc127++;
		stats->prc255--;
	} else if (frame_len == 255) {
		stats->prc255++;
		stats->prc511--;
	} else if (frame_len == 511) {
		stats->prc511++;
		stats->prc1023--;
	} else if (frame_len == 1023) {
		stats->prc1023++;
		stats->prc1522--;
	} else if (frame_len == 1522) {
		stats->prc1522++;
	}

out:
	return;
}