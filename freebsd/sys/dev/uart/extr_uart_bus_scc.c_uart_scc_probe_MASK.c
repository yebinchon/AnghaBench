#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_softc {int /*<<< orphan*/ * sc_class; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int ENXIO ; 
#define  SCC_CLASS_QUICC 130 
#define  SCC_CLASS_SAB82532 129 
#define  SCC_CLASS_Z8530 128 
 int /*<<< orphan*/  SCC_IVAR_CHANNEL ; 
 int /*<<< orphan*/  SCC_IVAR_CLASS ; 
 int /*<<< orphan*/  SCC_IVAR_CLOCK ; 
 int /*<<< orphan*/  SCC_IVAR_MODE ; 
 int /*<<< orphan*/  SCC_IVAR_REGSHFT ; 
 uintptr_t SCC_MODE_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct uart_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_quicc_class ; 
 int /*<<< orphan*/  uart_sab82532_class ; 
 int /*<<< orphan*/  uart_z8530_class ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	device_t parent;
	struct uart_softc *sc;
	uintptr_t ch, cl, md, rs;

	parent = FUNC1(dev);
	sc = FUNC2(dev);

	if (FUNC0(parent, dev, SCC_IVAR_MODE, &md) ||
	    FUNC0(parent, dev, SCC_IVAR_CLASS, &cl))
		return (ENXIO);
	if (md != SCC_MODE_ASYNC)
		return (ENXIO);
	switch (cl) {
	case SCC_CLASS_QUICC:
		sc->sc_class = &uart_quicc_class;
		break;
	case SCC_CLASS_SAB82532:
		sc->sc_class = &uart_sab82532_class;
		break;
	case SCC_CLASS_Z8530:
		sc->sc_class = &uart_z8530_class;
		break;
	default:
		return (ENXIO);
	}
	if (FUNC0(parent, dev, SCC_IVAR_CHANNEL, &ch) ||
	    FUNC0(parent, dev, SCC_IVAR_CLOCK, &cl) ||
	    FUNC0(parent, dev, SCC_IVAR_REGSHFT, &rs))
		return (ENXIO);

	return (FUNC3(dev, rs, 0, cl, 0, ch, 0));
}