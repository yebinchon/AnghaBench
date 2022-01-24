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
struct mlx4_en_rx_ring {int /*<<< orphan*/  dma_tag; } ;
struct mlx4_en_rx_mbuf {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  dma_map; } ;
typedef  int /*<<< orphan*/  bus_dmamap_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct mlx4_en_rx_ring *ring, struct mlx4_en_rx_mbuf *mb_list)
{
	bus_dmamap_t map = mb_list->dma_map;
	FUNC0(ring->dma_tag, map, BUS_DMASYNC_POSTREAD);
	FUNC1(ring->dma_tag, map);
	FUNC2(mb_list->mbuf);
	mb_list->mbuf = NULL;	/* safety clearing */
}