
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar71xx_spi_softc {scalar_t__ sc_mem_res; int sc_reg_ctrl; } ;
typedef int device_t ;


 int AR71XX_SPI_CTRL ;
 int AR71XX_SPI_FS ;
 int SPI_BARRIER_WRITE (struct ar71xx_spi_softc*) ;
 int SPI_WRITE (struct ar71xx_spi_softc*,int ,int ) ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct ar71xx_spi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ar71xx_spi_detach(device_t dev)
{
 struct ar71xx_spi_softc *sc = device_get_softc(dev);





 SPI_BARRIER_WRITE(sc);





 SPI_WRITE(sc, AR71XX_SPI_CTRL, sc->sc_reg_ctrl);
 SPI_BARRIER_WRITE(sc);





 SPI_WRITE(sc, AR71XX_SPI_FS, 0);
 SPI_BARRIER_WRITE(sc);

 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (0);
}
