
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sysctl_softc {scalar_t__ mem_res; int mem_rid; } ;
typedef int device_t ;


 int MTK_SYSCTL_LOCK_DESTROY (struct mtk_sysctl_softc*) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct mtk_sysctl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_sysctl_detach(device_t dev)
{
 struct mtk_sysctl_softc *sc = device_get_softc(dev);

 if (sc->mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid,
      sc->mem_res);

 MTK_SYSCTL_LOCK_DESTROY(sc);

 return(0);
}
