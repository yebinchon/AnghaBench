
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int CR_MASTER ;
 int CR_MSS ;
 int CR_RST_RX ;
 int CR_RST_TX ;
 int CR_SPE ;
 int DELAY (int) ;
 int ENXIO ;
 int SPI_CR ;
 int SPI_DGIER ;
 int SPI_SRR ;
 int SRR_RESET ;
 int WRITE4 (struct spi_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int ) ;
 struct spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int spi_spec ;

__attribute__((used)) static int
spi_attach(device_t dev)
{
 struct spi_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, spi_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 WRITE4(sc, SPI_SRR, SRR_RESET);

 DELAY(1000);

 reg = (CR_MASTER | CR_MSS | CR_RST_RX | CR_RST_TX);
 WRITE4(sc, SPI_CR, reg);
 WRITE4(sc, SPI_DGIER, 0);

 reg = (CR_MASTER | CR_MSS | CR_SPE);
 WRITE4(sc, SPI_CR, reg);

 device_add_child(dev, "spibus", 0);
 return (bus_generic_attach(dev));
}
