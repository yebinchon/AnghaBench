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
struct resource {int dummy; } ;
struct bhndb_regwin {scalar_t__ win_offset; } ;
struct TYPE_4__ {TYPE_1__* bus_res; } ;
struct bhndb_pci_softc {TYPE_2__ bhndb; } ;
typedef  scalar_t__ bus_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,struct bhndb_regwin const*) ; 
 struct bhndb_regwin* FUNC2 (struct bhndb_pci_softc*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 

__attribute__((used)) static bus_addr_t
FUNC4(struct bhndb_pci_softc *sc)
{
	const struct bhndb_regwin	*sprom_win;
	struct resource			*r;

	/* Fetch the SPROM register window */
	sprom_win = FUNC2(sc);
	FUNC0(sprom_win != NULL, ("requested sprom address on PCI_V2+"));

	/* Fetch the associated resource */
	r = FUNC1(sc->bhndb.bus_res->res, sprom_win);
	FUNC0(r != NULL, ("missing resource for sprom window\n"));

	return (FUNC3(r) + sprom_win->win_offset);
}