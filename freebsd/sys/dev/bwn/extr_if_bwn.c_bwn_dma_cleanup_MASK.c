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
struct bwn_dma_ring {scalar_t__ dr_type; int /*<<< orphan*/  dr_base; int /*<<< orphan*/  dr_mac; scalar_t__ dr_tx; } ;

/* Variables and functions */
 scalar_t__ BHND_DMA_ADDR_64BIT ; 
 int /*<<< orphan*/  BWN_DMA32_RXRING ; 
 int /*<<< orphan*/  BWN_DMA32_TXRING ; 
 int /*<<< orphan*/  BWN_DMA64_RXRINGHI ; 
 int /*<<< orphan*/  BWN_DMA64_RXRINGLO ; 
 int /*<<< orphan*/  BWN_DMA64_TXRINGHI ; 
 int /*<<< orphan*/  BWN_DMA64_TXRINGLO ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_dma_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct bwn_dma_ring *dr)
{

	if (dr->dr_tx) {
		FUNC2(dr->dr_mac, dr->dr_base, dr->dr_type);
		if (dr->dr_type == BHND_DMA_ADDR_64BIT) {
			FUNC0(dr, BWN_DMA64_TXRINGLO, 0);
			FUNC0(dr, BWN_DMA64_TXRINGHI, 0);
		} else
			FUNC0(dr, BWN_DMA32_TXRING, 0);
	} else {
		FUNC1(dr->dr_mac, dr->dr_base, dr->dr_type);
		if (dr->dr_type == BHND_DMA_ADDR_64BIT) {
			FUNC0(dr, BWN_DMA64_RXRINGLO, 0);
			FUNC0(dr, BWN_DMA64_RXRINGHI, 0);
		} else
			FUNC0(dr, BWN_DMA32_RXRING, 0);
	}
}