
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_spi_softc {scalar_t__ sc_mem_res; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct mtk_spi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_spi_detach(device_t dev)
{
 struct mtk_spi_softc *sc = device_get_softc(dev);

 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (0);
}
