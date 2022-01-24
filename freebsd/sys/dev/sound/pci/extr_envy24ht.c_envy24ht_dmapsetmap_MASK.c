#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct sc_info {int /*<<< orphan*/  dev; scalar_t__ paddr; } ;
struct TYPE_3__ {int ds_len; scalar_t__ ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENVY24HT_MT_PADDR ; 
 int /*<<< orphan*/  ENVY24HT_MT_PCNT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long) ; 

__attribute__((used)) static void
FUNC3(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct sc_info *sc = arg;

	sc->paddr = segs->ds_addr;
#if(0)
	device_printf(sc->dev, "envy24ht_dmapsetmap()\n");
	if (bootverbose) {
		printf("envy24ht(play): setmap %lx, %lx; ",
		    (unsigned long)segs->ds_addr,
		    (unsigned long)segs->ds_len);
	}
#endif
	FUNC1(sc, ENVY24HT_MT_PADDR, (uint32_t)segs->ds_addr, 4);
	FUNC1(sc, ENVY24HT_MT_PCNT, (uint32_t)(segs->ds_len / 4 - 1), 2);
}