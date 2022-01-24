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
struct rt2661_softc {int dummy; } ;
struct rt2661_rx_ring {int count; scalar_t__ next; scalar_t__ cur; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  RT2661_RX_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct rt2661_softc *sc, struct rt2661_rx_ring *ring)
{
	int i;

	for (i = 0; i < ring->count; i++)
		ring->desc[i].flags = FUNC1(RT2661_RX_BUSY);

	FUNC0(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

	ring->cur = ring->next = 0;
}