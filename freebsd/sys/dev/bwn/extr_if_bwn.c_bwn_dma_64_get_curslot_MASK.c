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
typedef  int uint32_t ;
struct bwn_dmadesc64 {int dummy; } ;
struct bwn_dma_ring {int dummy; } ;

/* Variables and functions */
 int BWN_DMA64_RXSTATDPTR ; 
 int /*<<< orphan*/  BWN_DMA64_RXSTATUS ; 
 int FUNC0 (struct bwn_dma_ring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct bwn_dma_ring *dr)
{
	uint32_t val;

	val = FUNC0(dr, BWN_DMA64_RXSTATUS);
	val &= BWN_DMA64_RXSTATDPTR;

	return (val / sizeof(struct bwn_dmadesc64));
}