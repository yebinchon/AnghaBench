
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_spi_softc {int sc_dev; } ;


 int BHND_WARN_DEV (int ,char*,int,int) ;
 int CHIPC_SPI_FLASHCTL ;
 int CHIPC_SPI_FLASHCTL_START ;
 int CHIPC_SPI_FLASHDATA ;
 int CHIPC_SPI_MAXTRIES ;
 int SPI_READ (struct chipc_spi_softc*,int ) ;

__attribute__((used)) static int
chipc_spi_wait(struct chipc_spi_softc *sc)
{
 int i;

 for (i = CHIPC_SPI_MAXTRIES; i > 0; i--)
  if (!(SPI_READ(sc, CHIPC_SPI_FLASHCTL) & CHIPC_SPI_FLASHCTL_START))
   break;

 if (i > 0)
  return (0);

 BHND_WARN_DEV(sc->sc_dev, "busy: CTL=0x%x DATA=0x%x",
     SPI_READ(sc, CHIPC_SPI_FLASHCTL),
     SPI_READ(sc, CHIPC_SPI_FLASHDATA));
 return (-1);
}
