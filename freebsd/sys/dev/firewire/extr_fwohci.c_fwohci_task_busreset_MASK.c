#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * config_rom; } ;
struct fwohci_softc {TYPE_1__ fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWBUSRESET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  OHCI_BUS_OPT ; 
 int /*<<< orphan*/  OHCI_CROMHDR ; 
 int /*<<< orphan*/  FUNC2 (struct fwohci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)arg;

	FUNC0(&sc->fc);
	FUNC3(&sc->fc, FWBUSRESET);
	FUNC2(sc, OHCI_CROMHDR, FUNC4(sc->fc.config_rom[0]));
	FUNC2(sc, OHCI_BUS_OPT, FUNC4(sc->fc.config_rom[2]));
	FUNC1(&sc->fc);
}