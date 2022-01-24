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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct schizo_softc {int /*<<< orphan*/  sc_ign; int /*<<< orphan*/  sc_dev; } ;
struct schizo_icarg {void* sica_clr; void* sica_map; struct schizo_softc* sica_sc; } ;
typedef  void* bus_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC1 (struct schizo_softc*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct schizo_icarg*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct schizo_icarg*) ; 
 struct schizo_icarg* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct schizo_softc*,int /*<<< orphan*/ ,void**,void**) ; 
 int /*<<< orphan*/  schizo_ic ; 

__attribute__((used)) static int
FUNC7(struct schizo_softc *sc, u_int ino)
{
	struct schizo_icarg *sica;
	bus_addr_t intrclr, intrmap;
	int error;

	if (FUNC6(sc, ino, &intrmap, &intrclr) == 0)
		return (ENXIO);
	sica = FUNC5(sizeof(*sica), M_DEVBUF, M_NOWAIT);
	if (sica == NULL)
		return (ENOMEM);
	sica->sica_sc = sc;
	sica->sica_map = intrmap;
	sica->sica_clr = intrclr;
#ifdef SCHIZO_DEBUG
	device_printf(sc->sc_dev, "intr map (INO %d) %#lx: %#lx, clr: %#lx\n",
	    ino, (u_long)intrmap, (u_long)SCHIZO_PCI_READ_8(sc, intrmap),
	    (u_long)intrclr);
#endif
	error = (FUNC4(FUNC0(sc->sc_ign, ino),
	    &schizo_ic, sica));
	if (error != 0)
		FUNC3(sica, M_DEVBUF);
	return (error);
}