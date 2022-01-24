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
struct bxe_softc {TYPE_1__* ioctl_dev; int /*<<< orphan*/ * eeprom; TYPE_2__* ifp; } ;
struct TYPE_4__ {int /*<<< orphan*/  if_dunit; } ;
struct TYPE_3__ {struct bxe_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  BXE_EEPROM_MAX_DATA_LEN ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  bxe_cdevsw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct bxe_softc *sc)
{
    sc->eeprom = FUNC4(BXE_EEPROM_MAX_DATA_LEN, M_DEVBUF, M_NOWAIT);

    if (sc->eeprom == NULL) {
        FUNC0(sc, "Unable to alloc for eeprom size buffer\n");
        return (-1);
    }

    sc->ioctl_dev = FUNC3(&bxe_cdevsw,
                            sc->ifp->if_dunit,
                            UID_ROOT,
                            GID_WHEEL,
                            0600,
                            "%s",
                            FUNC2(sc->ifp));

    if (sc->ioctl_dev == NULL) {
        FUNC1(sc->eeprom, M_DEVBUF);
        sc->eeprom = NULL;
        return (-1);
    }

    sc->ioctl_dev->si_drv1 = sc;

    return (0);
}