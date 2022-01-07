
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhndb_resources {struct bhndb_hwcfg* cfg; } ;
struct bhndb_regwin {int dummy; } ;
struct TYPE_2__ {struct bhndb_resources* bus_res; } ;
struct bhndb_pci_softc {TYPE_1__ bhndb; } ;
struct bhndb_hwcfg {int register_windows; } ;


 int BHNDB_PCI_V0_BAR0_SPROM_SIZE ;
 int BHNDB_REGWIN_T_SPROM ;
 struct bhndb_regwin* bhndb_regwin_find_type (int ,int ,int ) ;

__attribute__((used)) static const struct bhndb_regwin *
bhndb_pci_sprom_regwin(struct bhndb_pci_softc *sc)
{
 struct bhndb_resources *bres;
 const struct bhndb_hwcfg *cfg;
 const struct bhndb_regwin *sprom_win;

 bres = sc->bhndb.bus_res;
 cfg = bres->cfg;

 sprom_win = bhndb_regwin_find_type(cfg->register_windows,
     BHNDB_REGWIN_T_SPROM, BHNDB_PCI_V0_BAR0_SPROM_SIZE);

 return (sprom_win);
}
