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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct opal_nvram_softc {TYPE_1__* sc_cdev; int /*<<< orphan*/ * sc_buf; int /*<<< orphan*/  sc_buf_phys; int /*<<< orphan*/  sc_size; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct opal_nvram_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NVRAM_BUFSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct opal_nvram_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opal_nvram_cdevsw ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct opal_nvram_softc *sc;
	phandle_t node;
	int err;

	node = FUNC5(dev);
	sc = FUNC2(dev);

	sc->sc_dev = dev;

	err = FUNC0(node, "#bytes", &sc->sc_size,
	    sizeof(sc->sc_size));

	if (err < 0)
		return (ENXIO);

	sc->sc_buf = FUNC1(NVRAM_BUFSIZE, M_DEVBUF, M_WAITOK,
	    0, BUS_SPACE_MAXADDR, PAGE_SIZE, 0);
	if (sc->sc_buf == NULL) {
		FUNC3(dev, "No memory for buffer.\n");
		return (ENXIO);
	}
	sc->sc_buf_phys = FUNC6((vm_offset_t)sc->sc_buf);
	sc->sc_cdev = FUNC4(&opal_nvram_cdevsw, 0, 0, 0, 0600,
	    "nvram");
	sc->sc_cdev->si_drv1 = sc;

	return (0);
}