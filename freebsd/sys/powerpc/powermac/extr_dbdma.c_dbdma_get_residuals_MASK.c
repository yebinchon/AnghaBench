#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {TYPE_1__* sc_slots; int /*<<< orphan*/  sc_dmamap; int /*<<< orphan*/  sc_dmatag; } ;
typedef  TYPE_2__ dbdma_channel_t ;
struct TYPE_4__ {int /*<<< orphan*/  xferStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

uint16_t
FUNC2(dbdma_channel_t *chan, int slot)
{

	FUNC0(chan->sc_dmatag, chan->sc_dmamap, BUS_DMASYNC_POSTREAD);

	return (FUNC1(chan->sc_slots[slot].xferStatus));
}