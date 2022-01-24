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
struct uart_softc {struct uart_class* sc_class; } ;
struct uart_class {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct uart_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (struct uart_class*) ; 
 scalar_t__ FUNC9 (struct uart_class*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct uart_softc *sc;
	phandle_t node;
	pcell_t clock, shift, iowidth;
	int err;

	sc = FUNC0(dev);

	if (!FUNC2(dev))
		return (ENXIO);

	sc->sc_class = (struct uart_class *)FUNC4(dev);
	if (sc->sc_class == NULL)
		return (ENXIO);

	node = FUNC1(dev);

	if ((err = FUNC5(node, &clock)) != 0)
		return (err);
	if (FUNC7(node, &shift) != 0)
		shift = FUNC9(sc->sc_class);
	if (FUNC6(node, &iowidth) != 0)
		iowidth = FUNC8(sc->sc_class);

	return (FUNC3(dev, (int)shift, (int)iowidth, (int)clock, 0, 0, 0));
}