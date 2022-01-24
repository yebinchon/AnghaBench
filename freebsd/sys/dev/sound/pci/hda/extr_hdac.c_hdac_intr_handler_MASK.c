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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct hdac_softc {scalar_t__ unsolq_rp; scalar_t__ unsolq_wp; int num_ss; int /*<<< orphan*/  mem; TYPE_1__* streams; int /*<<< orphan*/  unsolq_task; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  dir; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDAC_INTSTS ; 
 int HDAC_INTSTS_CIS ; 
 int HDAC_INTSTS_GIS ; 
 int HDAC_INTSTS_SIS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ HDAC_RIRBSTS ; 
 int HDAC_RIRBSTS_RINTFL ; 
 scalar_t__ HDAC_SDSTS ; 
 int HDAC_SDSTS_BCIS ; 
 int HDAC_SDSTS_DESE ; 
 int HDAC_SDSTS_FIFOE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC9(void *context)
{
	struct hdac_softc *sc;
	device_t dev;
	uint32_t intsts;
	uint8_t rirbsts;
	int i;

	sc = (struct hdac_softc *)context;
	FUNC5(sc);

	/* Do we have anything to do? */
	intsts = FUNC1(&sc->mem, HDAC_INTSTS);
	if ((intsts & HDAC_INTSTS_GIS) == 0) {
		FUNC7(sc);
		return;
	}

	/* Was this a controller interrupt? */
	if (intsts & HDAC_INTSTS_CIS) {
		rirbsts = FUNC0(&sc->mem, HDAC_RIRBSTS);
		/* Get as many responses that we can */
		while (rirbsts & HDAC_RIRBSTS_RINTFL) {
			FUNC3(&sc->mem,
			    HDAC_RIRBSTS, HDAC_RIRBSTS_RINTFL);
			FUNC6(sc);
			rirbsts = FUNC0(&sc->mem, HDAC_RIRBSTS);
		}
		if (sc->unsolq_rp != sc->unsolq_wp)
			FUNC8(taskqueue_thread, &sc->unsolq_task);
	}

	if (intsts & HDAC_INTSTS_SIS_MASK) {
		for (i = 0; i < sc->num_ss; i++) {
			if ((intsts & (1 << i)) == 0)
				continue;
			FUNC3(&sc->mem, (i << 5) + HDAC_SDSTS,
			    HDAC_SDSTS_DESE | HDAC_SDSTS_FIFOE | HDAC_SDSTS_BCIS );
			if ((dev = sc->streams[i].dev) != NULL) {
				FUNC2(dev,
				    sc->streams[i].dir, sc->streams[i].stream);
			}
		}
	}

	FUNC4(&sc->mem, HDAC_INTSTS, intsts);
	FUNC7(sc);
}