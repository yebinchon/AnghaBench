
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_bmips_softc {int mem_rid; int cfg_rid; int * cfg; int * mem; int dev; } ;
typedef int device_t ;


 int BCM_BMIPS_NCPU_IRQS ;
 int BCM_BMIPS_TIMER_IRQ ;
 int BHND_PORT_AGENT ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SIBA_CFG0_INTVEC ;
 int SIBA_CFG0_IPSFLAG ;
 int SYS_RES_MEMORY ;
 int bcm_bmips_pic_intr ;
 int bcm_mips_attach (int ,int ,int ,int ) ;
 int bhnd_get_port_rid (int ,int ,int ,int ) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_write_4 (int *,int ,int) ;
 struct bcm_bmips_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bcm_bmips_attach(device_t dev)
{
 struct bcm_bmips_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;


 sc->mem_rid = 0;
 sc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->mem_rid,
     RF_ACTIVE);
 if (sc->mem == ((void*)0)) {
  device_printf(dev, "failed to allocate cpu register block\n");
  error = ENXIO;
  goto failed;
 }


 sc->cfg_rid = bhnd_get_port_rid(dev, BHND_PORT_AGENT, 0, 0);
 if (sc->cfg_rid == -1) {
  device_printf(dev, "missing required cfg0 register block\n");
  error = ENXIO;
  goto failed;
 }


 sc->cfg = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->cfg_rid,
     RF_ACTIVE|RF_SHAREABLE);
 if (sc->cfg == ((void*)0)) {
  device_printf(dev, "failed to allocate cfg0 register block\n");
  error = ENXIO;
  goto failed;
 }


 bus_write_4(sc->cfg, SIBA_CFG0_INTVEC, 0x0);
 bus_write_4(sc->cfg, SIBA_CFG0_IPSFLAG, 0x0);


 error = bcm_mips_attach(dev, BCM_BMIPS_NCPU_IRQS, BCM_BMIPS_TIMER_IRQ,
     bcm_bmips_pic_intr);
 if (error)
  goto failed;

 return (0);

failed:
 if (sc->mem != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);

 if (sc->cfg != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, sc->cfg_rid, sc->cfg);

 return (error);
}
