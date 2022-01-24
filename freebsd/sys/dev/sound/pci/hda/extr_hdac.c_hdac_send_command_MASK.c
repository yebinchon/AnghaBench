#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; scalar_t__ dma_vaddr; } ;
struct hdac_softc {size_t corb_wp; size_t corb_size; scalar_t__ unsolq_rp; scalar_t__ unsolq_wp; TYPE_2__* codecs; int /*<<< orphan*/  unsolq_task; int /*<<< orphan*/  dev; int /*<<< orphan*/  mem; TYPE_1__ corb_dma; } ;
typedef  size_t nid_t ;
struct TYPE_4__ {int response; scalar_t__ pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HDAC_CORBWP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int HDA_CMD_CAD_MASK ; 
 int HDA_CMD_CAD_SHIFT ; 
 int HDA_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_softc*) ; 
 scalar_t__ FUNC5 (struct hdac_softc*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static uint32_t
FUNC8(struct hdac_softc *sc, nid_t cad, uint32_t verb)
{
	int timeout;
	uint32_t *corb;

	if (!FUNC4(sc))
		FUNC3(sc->dev, "WARNING!!!! mtx not owned!!!!\n");
	verb &= ~HDA_CMD_CAD_MASK;
	verb |= ((uint32_t)cad) << HDA_CMD_CAD_SHIFT;
	sc->codecs[cad].response = HDA_INVALID;

	sc->codecs[cad].pending++;
	sc->corb_wp++;
	sc->corb_wp %= sc->corb_size;
	corb = (uint32_t *)sc->corb_dma.dma_vaddr;
	FUNC2(sc->corb_dma.dma_tag,
	    sc->corb_dma.dma_map, BUS_DMASYNC_PREWRITE);
	corb[sc->corb_wp] = FUNC6(verb);
	FUNC2(sc->corb_dma.dma_tag,
	    sc->corb_dma.dma_map, BUS_DMASYNC_POSTWRITE);
	FUNC1(&sc->mem, HDAC_CORBWP, sc->corb_wp);

	timeout = 10000;
	do {
		if (FUNC5(sc) == 0)
			FUNC0(10);
	} while (sc->codecs[cad].pending != 0 && --timeout);

	if (sc->codecs[cad].pending != 0) {
		FUNC3(sc->dev, "Command timeout on address %d\n", cad);
		sc->codecs[cad].pending = 0;
	}

	if (sc->unsolq_rp != sc->unsolq_wp)
		FUNC7(taskqueue_thread, &sc->unsolq_task);
	return (sc->codecs[cad].response);
}