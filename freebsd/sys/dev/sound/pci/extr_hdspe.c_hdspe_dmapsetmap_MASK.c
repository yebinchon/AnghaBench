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
struct sc_info {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct sc_info *sc;

	sc = (struct sc_info *)arg;

#if 0
	device_printf(sc->dev, "hdspe_dmapsetmap()\n");
#endif
}