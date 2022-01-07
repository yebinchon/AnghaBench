
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mii_softc {scalar_t__ mii_mpd_model; } ;
typedef int phandle_t ;
struct TYPE_3__ {int phynode; } ;
typedef TYPE_1__ mii_fdt_phy_config_t ;
typedef int device_t ;


 int ENXIO ;
 int MIIF_NOMANPAUSE ;
 scalar_t__ MII_MODEL_MICREL_KSZ8081 ;
 scalar_t__ MII_MODEL_MICREL_KSZ9031 ;
 int device_get_parent (int ) ;
 struct mii_softc* device_get_softc (int ) ;
 int ksz9021_load_values (struct mii_softc*,int ) ;
 int ksz9031_load_values (struct mii_softc*,int ) ;
 int micphy_funcs ;
 TYPE_1__* mii_fdt_get_config (int ) ;
 int mii_phy_dev_attach (int ,int ,int *,int) ;
 int mii_phy_setmedia (struct mii_softc*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
micphy_attach(device_t dev)
{
 mii_fdt_phy_config_t *cfg;
 struct mii_softc *sc;
 phandle_t node;
 device_t miibus;
 device_t parent;

 sc = device_get_softc(dev);

 mii_phy_dev_attach(dev, MIIF_NOMANPAUSE, &micphy_funcs, 1);
 mii_phy_setmedia(sc);


 if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ8081)
  return (0);

 miibus = device_get_parent(dev);
 parent = device_get_parent(miibus);

 if ((node = ofw_bus_get_node(parent)) == -1)
  return (ENXIO);

 cfg = mii_fdt_get_config(dev);

 if (sc->mii_mpd_model == MII_MODEL_MICREL_KSZ9031)
  ksz9031_load_values(sc, cfg->phynode);
 else
  ksz9021_load_values(sc, cfg->phynode);

 return (0);
}
