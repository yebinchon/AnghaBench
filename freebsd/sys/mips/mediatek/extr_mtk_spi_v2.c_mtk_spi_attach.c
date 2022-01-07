
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mtk_spi_softc {int sc_mem_res; int sc_dev; } ;
typedef int device_t ;


 int EBUSY ;
 int ENXIO ;
 int MTK_SPIMASTER ;
 int RF_ACTIVE ;
 int SPI_READ (struct mtk_spi_softc*,int ) ;
 int SPI_WRITE (struct mtk_spi_softc*,int ,int) ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int device_add_child (int ,char*,int ) ;
 struct mtk_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ mtk_spi_wait (struct mtk_spi_softc*) ;

__attribute__((used)) static int
mtk_spi_attach(device_t dev)
{
 struct mtk_spi_softc *sc = device_get_softc(dev);
 uint32_t val;
 int rid;

 sc->sc_dev = dev;
        rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "Could not map memory\n");
  return (ENXIO);
 }

 if (mtk_spi_wait(sc)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  return (EBUSY);
 }

 val = SPI_READ(sc, MTK_SPIMASTER);
 val &= ~(0xfff << 16);
 val |= 13 << 16;
 val |= 7 << 29;
 val |= 1 << 2;
 SPI_WRITE(sc, MTK_SPIMASTER, val);





 device_add_child(dev, "spibus", 0);
 return (bus_generic_attach(dev));
}
