
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sysctl_softc {int dev; int * mem_res; scalar_t__ mem_rid; } ;
typedef int device_t ;


 int ENXIO ;
 int MTK_SYSCTL_LOCK_INIT (struct mtk_sysctl_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 struct mtk_sysctl_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int mtk_sysctl_detach (int ) ;
 struct mtk_sysctl_softc* mtk_sysctl_sc ;

__attribute__((used)) static int
mtk_sysctl_attach(device_t dev)
{
 struct mtk_sysctl_softc *sc = device_get_softc(dev);

 if (device_get_unit(dev) != 0 || mtk_sysctl_sc != ((void*)0)) {
  device_printf(dev, "Only one sysctl module supported\n");
  return (ENXIO);
 }

 mtk_sysctl_sc = sc;


 sc->mem_rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->mem_rid, RF_ACTIVE);

 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  mtk_sysctl_detach(dev);
  return (ENXIO);
 }

 sc->dev = dev;

 MTK_SYSCTL_LOCK_INIT(sc);

 return (0);
}
