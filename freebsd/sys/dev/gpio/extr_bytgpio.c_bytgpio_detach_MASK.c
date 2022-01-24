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
struct bytgpio_softc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_mem_rid; scalar_t__ sc_pad_funcs; scalar_t__ sc_busdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bytgpio_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bytgpio_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct bytgpio_softc	*sc;

	sc = FUNC2(dev);

	if (sc->sc_busdev)
		FUNC4(dev);

	FUNC0(sc);

	if (sc->sc_pad_funcs)
		FUNC3(sc->sc_pad_funcs, M_DEVBUF);

	if (sc->sc_mem_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY,
		    sc->sc_mem_rid, sc->sc_mem_res);

	return (0);
}