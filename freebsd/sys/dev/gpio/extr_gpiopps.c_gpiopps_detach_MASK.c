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
struct pps_softc {TYPE_1__* gpin; int /*<<< orphan*/ * ires; int /*<<< orphan*/  irid; int /*<<< orphan*/ * ihandler; int /*<<< orphan*/ * pps_cdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  pin; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pps_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct pps_softc *sc = FUNC4(dev);

	if (sc->pps_cdev != NULL)
		FUNC3(sc->pps_cdev);
	if (sc->ihandler != NULL)
		FUNC2(dev, sc->ires, sc->ihandler);
	if (sc->ires != NULL)
		FUNC1(dev, SYS_RES_IRQ, sc->irid, sc->ires);
	if (sc->gpin != NULL)
		FUNC5(FUNC0(sc->gpin->dev), sc->gpin->pin);
	return (0);
}