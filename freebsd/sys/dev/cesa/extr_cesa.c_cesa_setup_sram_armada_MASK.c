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
typedef  scalar_t__ vm_offset_t ;
struct simplebus_softc {int nranges; TYPE_1__* ranges; int /*<<< orphan*/  scells; int /*<<< orphan*/  acells; } ;
struct resource_list_entry {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  count; } ;
struct resource_list {int dummy; } ;
struct cesa_softc {int sc_cesa_engine_id; scalar_t__ sc_sram_base_pa; scalar_t__ sc_sram_base_va; int /*<<< orphan*/  sc_sram_size; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  sram_handle ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  scalar_t__ ihandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ bus; scalar_t__ size; scalar_t__ host; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct simplebus_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_list*) ; 
 void* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC8 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource_list*) ; 

__attribute__((used)) static int
FUNC10(struct cesa_softc *sc)
{
	phandle_t sram_node;
	ihandle_t sram_ihandle;
	pcell_t sram_handle[2];
	void *sram_va;
	int rv, j;
	struct resource_list rl;
	struct resource_list_entry *rle;
	struct simplebus_softc *ssc;
	device_t sdev;

	/* Get refs to SRAMS from CESA node */
	rv = FUNC0(FUNC5(sc->sc_dev), "marvell,crypto-srams",
	    (void *)sram_handle, sizeof(sram_handle));
	if (rv <= 0)
		return (rv);

	if (sc->sc_cesa_engine_id >= 2)
		return (ENXIO);

	/* Get SRAM node on the basis of sc_cesa_engine_id */
	sram_ihandle = (ihandle_t)sram_handle[sc->sc_cesa_engine_id];
	sram_node = FUNC1(sram_ihandle);

	/* Get device_t of simplebus (sram_node parent) */
	sdev = FUNC3(NULL, FUNC2(sram_node));
	if (!sdev)
		return (ENXIO);

	ssc = FUNC4(sdev);

	FUNC9(&rl);
	/* Parse reg property to resource list */
	FUNC6(sdev, sram_node, ssc->acells,
	    ssc->scells, &rl);

	/* We expect only one resource */
	rle = FUNC8(&rl, SYS_RES_MEMORY, 0);
	if (rle == NULL)
		return (ENXIO);

	/* Remap through ranges property */
	for (j = 0; j < ssc->nranges; j++) {
		if (rle->start >= ssc->ranges[j].bus &&
		    rle->end < ssc->ranges[j].bus + ssc->ranges[j].size) {
			rle->start -= ssc->ranges[j].bus;
			rle->start += ssc->ranges[j].host;
			rle->end -= ssc->ranges[j].bus;
			rle->end += ssc->ranges[j].host;
		}
	}

	sc->sc_sram_base_pa = rle->start;
	sc->sc_sram_size = rle->count;

	/* SRAM memory was not mapped in platform_sram_devmap(), map it now */
	sram_va = FUNC7(sc->sc_sram_base_pa, sc->sc_sram_size);
	if (sram_va == NULL)
		return (ENOMEM);
	sc->sc_sram_base_va = (vm_offset_t)sram_va;

	return (0);
}