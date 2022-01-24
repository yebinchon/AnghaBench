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
struct lance_softc {int dummy; } ;
struct TYPE_2__ {struct lance_softc lsc; } ;
struct le_lebuffer_softc {int /*<<< orphan*/  sc_bres; int /*<<< orphan*/  sc_rres; int /*<<< orphan*/  sc_ires; TYPE_1__ sc_am7990; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lance_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct le_lebuffer_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct le_lebuffer_softc *lesc;
	struct lance_softc *sc;

	lesc = FUNC5(dev);
	sc = &lesc->sc_am7990.lsc;

	FUNC3(dev, lesc->sc_ires, lesc->sc_ih);
	FUNC1(&lesc->sc_am7990);
	FUNC2(dev, SYS_RES_IRQ,
	    FUNC6(lesc->sc_ires), lesc->sc_ires);
	FUNC2(dev, SYS_RES_MEMORY,
	    FUNC6(lesc->sc_rres), lesc->sc_rres);
	FUNC2(FUNC4(dev), SYS_RES_MEMORY,
	    FUNC6(lesc->sc_bres), lesc->sc_bres);
	FUNC0(sc);

	return (0);
}