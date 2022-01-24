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
struct bhndb_resources {struct bhndb_hwcfg* cfg; } ;
struct bhndb_regwin {int dummy; } ;
struct TYPE_2__ {struct bhndb_resources* bus_res; } ;
struct bhndb_pci_softc {TYPE_1__ bhndb; } ;
struct bhndb_hwcfg {int /*<<< orphan*/  register_windows; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_PCI_V0_BAR0_SPROM_SIZE ; 
 int /*<<< orphan*/  BHNDB_REGWIN_T_SPROM ; 
 struct bhndb_regwin* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct bhndb_regwin *
FUNC1(struct bhndb_pci_softc *sc)
{
	struct bhndb_resources		*bres;
	const struct bhndb_hwcfg	*cfg;
	const struct bhndb_regwin	*sprom_win;

	bres = sc->bhndb.bus_res;
	cfg = bres->cfg;

	sprom_win = FUNC0(cfg->register_windows,
	    BHNDB_REGWIN_T_SPROM, BHNDB_PCI_V0_BAR0_SPROM_SIZE);

	return (sprom_win);
}