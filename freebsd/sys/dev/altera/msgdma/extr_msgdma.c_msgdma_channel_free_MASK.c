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
struct msgdma_softc {int dummy; } ;
struct msgdma_channel {scalar_t__ used; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct msgdma_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msgdma_softc*,struct msgdma_channel*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct xdma_channel *xchan)
{
	struct msgdma_channel *chan;
	struct msgdma_softc *sc;

	sc = FUNC0(dev);

	chan = (struct msgdma_channel *)xchan->chan;

	FUNC1(sc, chan);

	chan->used = 0;

	return (0);
}