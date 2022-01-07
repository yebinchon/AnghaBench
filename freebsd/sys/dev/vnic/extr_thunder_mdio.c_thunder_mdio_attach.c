
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_mdio_softc {int phy_desc_head; int * reg_base; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int MDIO_LOCK_INIT (struct thunder_mdio_softc*,char*) ;
 int REG_BASE_RID ;
 int RF_ACTIVE ;
 int SMI_EN ;
 int SMI_EN_EN ;
 int SYS_RES_MEMORY ;
 int TAILQ_INIT (int *) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct thunder_mdio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mdio_reg_write (struct thunder_mdio_softc*,int ,int ) ;

int
thunder_mdio_attach(device_t dev)
{
 struct thunder_mdio_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 sc->dev = dev;


 rid = REG_BASE_RID;
 sc->reg_base = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->reg_base == ((void*)0)) {
  device_printf(dev, "Could not allocate memory\n");
  return (ENXIO);
 }

 TAILQ_INIT(&sc->phy_desc_head);
 MDIO_LOCK_INIT(sc, "ThunderX MDIO lock");


 mdio_reg_write(sc, SMI_EN, SMI_EN_EN);

 return (0);
}
