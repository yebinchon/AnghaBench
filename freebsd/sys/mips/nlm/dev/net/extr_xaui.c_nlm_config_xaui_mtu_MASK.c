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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(uint64_t nae_base, int nblock,
    int max_tx_frame_sz, int max_rx_frame_sz)
{
	uint32_t tx_words = max_tx_frame_sz >> 2; /* max_tx_frame_sz / 4 */

	/* write max frame length */
	FUNC1(nae_base,
	    FUNC0(nblock),
	    ((tx_words & 0x3ff) << 16) | (max_rx_frame_sz & 0xffff));
}