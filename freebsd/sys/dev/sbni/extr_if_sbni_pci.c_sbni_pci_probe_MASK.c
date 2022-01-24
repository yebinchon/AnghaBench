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
typedef  int u_int32_t ;
struct sbni_softc {TYPE_1__* slave_sc; scalar_t__ io_res; int /*<<< orphan*/  io_rid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int io_off; scalar_t__ io_res; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 scalar_t__ SBNI_PCI_DEVICE ; 
 scalar_t__ SBNI_PCI_VENDOR ; 
 int SBNI_PORTS ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sbni_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct sbni_softc*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct sbni_softc  *sc;
	u_int32_t  ports;
 
	ports = SBNI_PORTS;
	if (FUNC9(dev) != SBNI_PCI_VENDOR ||
	    FUNC7(dev) != SBNI_PCI_DEVICE)
		return (ENXIO);

	sc = FUNC2(dev);
	if (FUNC8(dev) == 2) {
		ports <<= 1;
		sc->slave_sc = FUNC6(sizeof(struct sbni_softc),
				      M_DEVBUF, M_NOWAIT | M_ZERO);
		if (!sc->slave_sc)
			return (ENOMEM);
		FUNC4(dev, "Granch SBNI12/PCI Dual adapter");
	} else
		FUNC4(dev, "Granch SBNI12/PCI adapter");

	sc->io_rid = FUNC0(0);
 	sc->io_res = FUNC1(dev, SYS_RES_IOPORT,
					    &sc->io_rid, RF_ACTIVE);
	if (!sc->io_res) {
		FUNC3(dev, "cannot allocate io ports!\n");
		if (sc->slave_sc)
			FUNC5(sc->slave_sc, M_DEVBUF);
		return (ENOENT);
	}

	if (sc->slave_sc) {
		sc->slave_sc->io_res = sc->io_res;
		sc->slave_sc->io_off = 4;
	}
	if (FUNC10(sc) != 0) {
		FUNC11(sc);
		if (sc->slave_sc)
			FUNC5(sc->slave_sc, M_DEVBUF);
		return (ENXIO);
	}

	return (0);
}