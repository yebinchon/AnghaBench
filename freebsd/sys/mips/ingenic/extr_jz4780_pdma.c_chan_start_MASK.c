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
struct xdma_channel {int dummy; } ;
struct pdma_softc {int dummy; } ;
struct pdma_channel {int index; int desc_ring_paddr; int cur_desc; struct xdma_channel* xchan; } ;

/* Variables and functions */
 int DCS_CTE ; 
 int DCS_DES8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PDMA_DDS ; 
 int /*<<< orphan*/  FUNC2 (struct pdma_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct pdma_softc *sc, struct pdma_channel *chan)
{
	struct xdma_channel *xchan;

	xchan = chan->xchan;

	/* 8 byte descriptor. */
	FUNC2(sc, FUNC0(chan->index), DCS_DES8);
	FUNC2(sc, FUNC1(chan->index),
	    chan->desc_ring_paddr + 8 * 4 * chan->cur_desc);

	FUNC2(sc, PDMA_DDS, (1 << chan->index));

	/* Channel transfer enable. */
	FUNC2(sc, FUNC0(chan->index), (DCS_DES8 | DCS_CTE));

	return (0);
}