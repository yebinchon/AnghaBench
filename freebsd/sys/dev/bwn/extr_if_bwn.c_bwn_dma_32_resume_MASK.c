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
struct bwn_dma_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_DMA32_TXCTL ; 
 int BWN_DMA32_TXSUSPEND ; 
 int FUNC0 (struct bwn_dma_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_dma_ring*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct bwn_dma_ring *dr)
{

	FUNC1(dr, BWN_DMA32_TXCTL,
	    FUNC0(dr, BWN_DMA32_TXCTL) & ~BWN_DMA32_TXSUSPEND);
}