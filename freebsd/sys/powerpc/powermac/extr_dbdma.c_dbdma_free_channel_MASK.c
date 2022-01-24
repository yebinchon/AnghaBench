#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sc_dmatag; int /*<<< orphan*/  sc_dmamap; int /*<<< orphan*/  sc_slots; } ;
typedef  TYPE_1__ dbdma_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DBDMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC4(dbdma_channel_t *chan)
{

	FUNC2(chan);

	FUNC1(chan->sc_dmatag, chan->sc_slots, chan->sc_dmamap);
	FUNC0(chan->sc_dmatag);

	FUNC3(chan, M_DBDMA);

	return (0);
}