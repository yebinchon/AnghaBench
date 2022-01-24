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
struct le_isa_softc {int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_rdp; int /*<<< orphan*/  sc_rap; TYPE_1__ sc_am7990; } ;
struct le_isa_param {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; int /*<<< orphan*/  iosize; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 scalar_t__ LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  LE_CSR3 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct le_isa_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lance_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lance_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev, const struct le_isa_param *leip)
{
	struct le_isa_softc *lesc;
	struct lance_softc *sc;
	int error, i;

	lesc = FUNC3(dev);
	sc = &lesc->sc_am7990.lsc;

	i = 0;
	lesc->sc_rres = FUNC1(dev, SYS_RES_IOPORT, &i,
	    leip->iosize, RF_ACTIVE);
	if (lesc->sc_rres == NULL)
		return (ENXIO);
	lesc->sc_rap = leip->rap;
	lesc->sc_rdp = leip->rdp;

	/* Stop the chip and put it in a known state. */
	FUNC5(sc, LE_CSR0, LE_C0_STOP);
	FUNC0(100);
	if (FUNC4(sc, LE_CSR0) != LE_C0_STOP) {
		error = ENXIO;
		goto fail;
	}
	FUNC5(sc, LE_CSR3, 0);
	error = 0;

 fail:
	FUNC2(dev, SYS_RES_IOPORT,
	    FUNC6(lesc->sc_rres), lesc->sc_rres);
	return (error);
}