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
struct xdma_channel {scalar_t__ chan; } ;
struct axidma_softc {int dummy; } ;
struct axidma_channel {int used; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axidma_softc*,struct axidma_channel*) ; 
 struct axidma_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct xdma_channel *xchan)
{
	struct axidma_channel *chan;
	struct axidma_softc *sc;

	sc = FUNC1(dev);

	chan = (struct axidma_channel *)xchan->chan;

	FUNC0(sc, chan);

	chan->used = false;

	return (0);
}