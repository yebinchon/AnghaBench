
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_spi_softc {int sc_reg_ctrl; int sc_mem_res; int sc_dev; } ;
typedef int device_t ;


 int AR71XX_SPI_CTRL ;
 int AR71XX_SPI_FS ;
 int AR71XX_SPI_IO_CTRL ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SPI_BARRIER_WRITE (struct ar71xx_spi_softc*) ;
 int SPI_IO_CTRL_CSMASK ;
 int SPI_READ (struct ar71xx_spi_softc*,int ) ;
 int SPI_WRITE (struct ar71xx_spi_softc*,int ,int) ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 struct ar71xx_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ar71xx_spi_attach(device_t dev)
{
 struct ar71xx_spi_softc *sc = device_get_softc(dev);
 int rid;

 sc->sc_dev = dev;
        rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "Could not map memory\n");
  return (ENXIO);
 }

 SPI_WRITE(sc, AR71XX_SPI_FS, 1);


 SPI_BARRIER_WRITE(sc);

 sc->sc_reg_ctrl = SPI_READ(sc, AR71XX_SPI_CTRL);




 SPI_WRITE(sc, AR71XX_SPI_CTRL, 0x43);





 SPI_BARRIER_WRITE(sc);
 SPI_WRITE(sc, AR71XX_SPI_IO_CTRL, SPI_IO_CTRL_CSMASK);




 SPI_BARRIER_WRITE(sc);

 device_add_child(dev, "spibus", -1);
 return (bus_generic_attach(dev));
}
