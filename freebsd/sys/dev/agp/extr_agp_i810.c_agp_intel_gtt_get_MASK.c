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
struct intel_gtt {scalar_t__ gma_bus_addr; int /*<<< orphan*/  scratch_page_dma; scalar_t__ do_idle_maps; int /*<<< orphan*/  gtt_mappable_entries; int /*<<< orphan*/  gtt_total_entries; int /*<<< orphan*/  stolen_size; } ;
struct TYPE_2__ {int /*<<< orphan*/ * as_aperture; } ;
struct agp_i810_softc {TYPE_1__ agp; int /*<<< orphan*/  gtt_mappable_entries; int /*<<< orphan*/  gtt_total_entries; int /*<<< orphan*/  stolen_size; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bogus_page ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

struct intel_gtt
FUNC3(device_t dev)
{
	struct agp_i810_softc *sc;
	struct intel_gtt res;

	sc = FUNC1(dev);
	res.stolen_size = sc->stolen_size;
	res.gtt_total_entries = sc->gtt_total_entries;
	res.gtt_mappable_entries = sc->gtt_mappable_entries;
	res.do_idle_maps = 0;
	res.scratch_page_dma = FUNC0(bogus_page);
	if (sc->agp.as_aperture != NULL)
		res.gma_bus_addr = FUNC2(sc->agp.as_aperture);
	else
		res.gma_bus_addr = 0;
	return (res);
}