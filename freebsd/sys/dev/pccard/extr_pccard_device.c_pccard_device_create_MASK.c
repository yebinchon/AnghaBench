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
typedef  int uint32_t ;
struct pccard_softc {TYPE_1__* cisdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct pccard_softc* si_drv1; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  pccard_cdevsw ; 

int
FUNC2(struct pccard_softc *sc)
{
	uint32_t minor;

	minor = FUNC0(sc->dev) << 16;
	sc->cisdev = FUNC1(&pccard_cdevsw, minor, 0, 0, 0666,
	    "pccard%u.cis", FUNC0(sc->dev));
	sc->cisdev->si_drv1 = sc;
	return (0);
}